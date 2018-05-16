// through2 is a thin wrapper around node transform streams
var through = require('through2'),
	vm = require('vm'),
	// gutil = require('gulp-util'),
	_ = require('lodash');

// consts
const PLUGIN_NAME = 'gulp-jsufonify';

function ufoToPtf( src ) {
	if ( src.parameter ) {
		src.parameters = src.parameter;
		delete src.parameter;
	}

	if ( src.anchor ) {
		src.anchors = src.anchor;
		delete src.anchor;
	}

	if ( src.outline && src.outline.contour ) {
		src.contours = src.outline.contour;
		delete src.outline.contour;
	}

	if ( src.contours ) {
		src.contours.forEach(function(contour) {
			if ( contour.point ) {
				contour.nodes = contour.point;
				delete contour.point;
			}
		});
	}

	if ( src.outline && src.outline.component ) {
		src.components = src.outline.component;

		src.components.forEach(function(component) {
			if ( component.anchor ) {
				component.parentAnchors = component.anchor;
				delete component.anchor;
			}

			if ( component.parameter ) {
				component.parentParameters = component.parameter;
				delete component.parameter;
			}
		});

		delete src.outline.component;
	}

	delete src.outline;

	if ( src.lib && src.lib.transforms ) {
		src.transforms = src.lib.transforms;
		delete src.lib.transforms;
	}

	if ( src.lib && src.lib.transformOrigin ) {
		src.transformOrigin = src.lib.transformOrigin;
		delete src.lib.transformOrigin;
	}

	if ( src.lib && src.lib.parameters ) {
		src.parameters = src.lib.parameters;
		delete src.lib.parameters;
	}

	if ( src.lib && src.lib.solvingOrder ) {
		src.solvingOrder = src.lib.solvingOrder;
		delete src.lib.solvingOrder;
	}

	return src;
};

function addComponents( glyph ) {
	_(glyph.components).forEach(function( component, i ) {
		glyph.outline.component[i] = component;

		component.anchor = [];

		_(component.parentAnchors).forEach(function( anchor, i ) {
			component.anchor[i] = anchor;
		});
		delete component.parentAnchors;

		component.parameter = {};

		_(component.parentParameters).forEach(function( parameter, i ) {
			component.parameter[i] = parameter;
		});
		delete component.parentParameters;
	});
}

function linkToRelatedGlyphs(glyph, glyphsByName) {
	var base = glyphsByName[glyph.base];

	if (base) {
		base.relatedGlyphs = base.relatedGlyphs || [];
		glyph.relatedGlyphs = glyph.relatedGlyphs || [];

		base.relatedGlyphs.forEach(function(name) {
			glyphsByName[name].relatedGlyphs = glyphsByName[name].relatedGlyphs || [];
			glyphsByName[name].relatedGlyphs.push(glyph.name);
		});
		glyph.relatedGlyphs = glyph.relatedGlyphs.concat(base.name, base.relatedGlyphs);

		base.relatedGlyphs.push(glyph.name);
	}
}

function relatedGlyphsToUnicode(glyph, glyphsByName) {
	const glyphs = {};
	glyph.relatedGlyphs.forEach((name) => {
		const relGlyph = glyphsByName[name];

		if (!glyphs[relGlyph.unicode]) {
			glyphs[relGlyph.unicode] = {};
		}

		glyphs[relGlyph.unicode] = name;
	});
	glyph.relatedGlyphs = glyphs;
}

// plugin level function (dealing with files)
function jsufonify(/*prefixText*/free, subset) {
	// creating a stream through which each file will pass
	var stream = through.obj(function(file, enc, cb) {
		var sandbox = { exports: { glyphs: {} } },
			font;

		vm.runInNewContext( file.contents, sandbox );

		font = sandbox.exports;

		var charMap = {};
		var altMap = {};

		if (free) {
			font.glyphs = _.mapValues(font.glyphs, (glyph) => {
				if (glyph.unicode === undefined) {
					return glyph;
				}
				else {
					if (typeof glyph.unicode === 'number') {
						return (glyph.unicode >=65 && glyph.unicode <= 90) ||
							(glyph.unicode >= 87 && glyph.unicode <= 122) ? glyph : undefined;
					}
					else {
						return (glyph.unicode.charCodeAt(0) >=65 && glyph.unicode.charCodeAt(0) <= 90) ||
							(glyph.unicode.charCodeAt(0) >= 87 && glyph.unicode.charCodeAt(0) <= 122) ? glyph : undefined;
					}
				}
				return glyph.unicode === undefined ||
					(glyph.unicode.charCodeAt(0) >=65 && glyph.unicode.charCodeAt(0) <= 90) ||
					(glyph.unicode.charCodeAt(0) >= 87 && glyph.unicode.charCodeAt(0) <= 122) ? glyph : undefined;
			});
			font.glyphs = _.pickBy(font.glyphs, glyph => glyph);
		} else if (subset) {
			const unicodeSubset = subset.split('').map(item => item.charCodeAt(0));
			font.glyphs = _.mapValues(font.glyphs, (glyph) => {
				const unicode = glyph.unicode === undefined || typeof glyph.unicode === 'number' ? glyph.unicode : glyph.unicode.charCodeAt(0);
				if (unicode === undefined || unicodeSubset.indexOf(unicode) !== -1) {
					_.forEach(glyph.components, (comp) => {
						let base;
						if (typeof comp.base === 'string') {
							base = [comp.base];
						}
						else {
							base = comp.base;
						}
						base.forEach((baseToLookup) => {
							const unicode = font.glyphs[baseToLookup].unicode;
							if (unicode) {
								unicodeSubset.push(unicode);
							}
						});
					});
				}
				return unicode === undefined ||  unicodeSubset.indexOf(unicode) !== -1 ?
					glyph :
					undefined;
			});
			font.glyphs = _.pickBy(font.glyphs, glyph => glyph);
		}

		// WIP: convert ptf object to jsufon
		_.forEach(font.glyphs, function( glyph, name ) {
			glyph.name = name;

			if ( glyph.name.length === 1 ) {
				glyph.unicode = glyph.name.charCodeAt(0);

			} else if ( typeof glyph.unicode === 'string' ) {
				glyph.unicode = glyph.unicode.charCodeAt(0);
			}
			charMap[glyph.unicode] = glyph;
			altMap[glyph.name] = glyph;

			// glyph.anchors -> glyph.anchor
			if ( glyph.anchors ) {
				glyph.anchor = [];

				_(glyph.anchors).forEach(function( anchor, i ) {
					glyph.anchor[i] = anchor;
				});
			}
			delete glyph.anchors;

			// glyph.parameters -> glyph.anchor
			if ( glyph.parameters ) {
				glyph.parameter = {};

				_(glyph.parameters).forEach(function( parameter, i ) {
					glyph.parameter[i] = parameter;
				});
			}
			delete glyph.parameters;

			if ( !glyph.outline ) {
				glyph.outline = {};
			}

			// glyph.contours -> glyph.outline.contour
			if ( !glyph.outline.contour ) {
				glyph.outline.contour = [];
			}
			_(glyph.contours).forEach(function( contour, i ) {
				contour.point = [];

				// contour.nodes -> contour.point
				_(contour.nodes).forEach(function( node, j ) {
					contour.point[j] = node;
				});
				delete contour.nodes;

				glyph.outline.contour[i] = contour;
			});
			delete glyph.contours;

			// glyph.components -> glyph.outline.component
			if ( !glyph.outline.component ) {
				glyph.outline.component = [];
			}
			addComponents( glyph );
			delete glyph.components;

			if ( !glyph.lib ) {
				glyph.lib = {};
			}
			// glyph.transform -> glyph.outline.transform
			if ( glyph.transformList ) {
				glyph.lib = {
					transformList: glyph.transformList
				};
				delete glyph.transformList;
			}

			return glyph;
		});

		_.forEach(font.glyphs, function(glyph) {
			if(glyph.base === undefined) {
				return;
			}

			linkToRelatedGlyphs(glyph, font.glyphs);
		})

		_.forEach(font.glyphs, function(glyph) {
			if(glyph.relatedGlyphs === undefined) {
				return;
			}

			relatedGlyphsToUnicode(glyph, font.glyphs);
		})

		// temporary workaround, add diacritics base handling here
		_.forEach(font.glyphs, function( _glyph ) {
			// Temporary workaround: deal with diacritics here.
			if ( _glyph.base === undefined ) {
				return;
			}

			// we'll save the diacritics sourcs, replace it with the base glyph
			// source and then restore/merge the properties we're interested in
			var glyph = _.cloneDeep( altMap[ _glyph.base ], true );
			if (glyph) {

				glyph.name = _glyph.name;
				glyph.base = _glyph.base;
				glyph.unicode = _glyph.unicode;
				glyph.tags = _glyph.tags;
				glyph.glyphName = _glyph.glyphName;
				glyph.characterName = _glyph.characterName;
				// merge all parameters (diacritic will overwrite base parameters)
				_.assign( glyph.parameter, _glyph.parameter );
				// merge the two array of components
				[].push.apply(glyph.outline.component, _glyph.outline.component );

				font.glyphs[_glyph.name] = glyph;
			}
		});

		file.contents = new Buffer( JSON.stringify( sandbox.exports ) );

		this.push(file);

		return cb();
	});

	// returning the file stream
	return stream;
}

// exporting the plugin main function
module.exports = jsufonify;
