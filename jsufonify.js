// through2 is a thin wrapper around node transform streams
var through = require('through2'),
	vm = require('vm'),
	// gutil = require('gulp-util'),
	_ = require('lodash');

// consts
const PLUGIN_NAME = 'gulp-jsufonify';

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

// plugin level function (dealing with files)
function jsufonify(/*prefixText*/) {

	// creating a stream through which each file will pass
	var stream = through.obj(function(file, enc, cb) {
		var sandbox = { exports: { glyphs: {} } },
			font;

		vm.runInNewContext( file.contents, sandbox );

		font = sandbox.exports;

		var charMap = {};

		// WIP: convert ptf object to jsufon
		_.forEach(font.glyphs, function( glyph, name ) {
			glyph.name = name;

			if ( glyph.name.length === 1 ) {
				glyph.unicode = glyph.name.charCodeAt(0);

			} else if ( typeof glyph.unicode === 'string' ) {
				glyph.unicode = glyph.unicode.charCodeAt(0);
			}
			charMap[glyph.unicode] = glyph;

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

		// temporary workaround, add diacritics base handling here
		_.forEach(font.glyphs, function( _glyph ) {
			// Temporary workaround: deal with diacritics here.
			if ( _glyph.base === undefined ) {
				return;
			}

			// we'll save the diacritics sourcs, replace it with the base glyph
			// source and then restore/merge the properties we're interested in
			var glyph = _.clone( charMap[ _glyph.base.charCodeAt(0) ], true );

			glyph.name = _glyph.name;
			glyph.unicode = _glyph.unicode;
			glyph.tags = _glyph.tags;
			glyph.glyphName = _glyph.glyphName;
			glyph.characterName = _glyph.characterName;
			// merge all parameters (diacritic will overwrite base parameters)
			_.assign( glyph.parameter, _glyph.parameter );
			// merge the two array of components
			[].push.apply(glyph.outline.component, _glyph.outline.component );

			font.glyphs[_glyph.name] = glyph;
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
