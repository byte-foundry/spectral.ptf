// through2 is a thin wrapper around node transform streams
var through = require('through2'),
	gutil = require('gulp-util'),
	esprima = require('esprima'),
	escodegen = require('escodegen'),
	estraverse = require('estraverse'),
	_ = require('lodash'),
	PluginError = gutil.PluginError;

// consts
const PLUGIN_NAME = 'gulp-operationalyzer';

function isOperation( node, parent ) {
	return node && parent &&
		node.type !== 'ObjectExpression' &&
		node.type !== 'ArrayExpression' &&
		node.type !== 'Literal' &&
		( node.type !== 'UnaryExpression' || node.argument.type === 'Identifier' ) &&
		( parent.type === 'Property' || parent.type === 'ArrayExpression' );
}

function unique(e, i, arr) {
	return arr.lastIndexOf(e) === i;
}

// plugin level function (dealing with files)
function operationalyzer() {
	// prepare a generic operation object that we'll reuse to replace each operation
	var operation = esprima.parse('_ = {_operation: \'\', _parameters: [], _dependencies: []}')
			.body[0].expression.right.properties;

	// creating a stream through which each file will pass
	var stream = through.obj(function(file, enc, cb) {
		var ast = esprima.parse( file.contents.toString() ),
			inOperation,
			inMember,
			toLiteralize = [],
			parameters,
			dependencies,
			updatedAst;

		updatedAst = estraverse.replace( ast, {
			enter: function( node, parent ) {
				// make all object keys strings
				// (otherwise in `{ y: y }`, both `y`s are undistinguishable)
				if ( node.type === 'Property' && node.key.type === 'Identifier' ) {
					node.key.type = 'Literal';
					node.key.value = node.key.name;
					node.key.raw = '\'' + node.key.name + '\'';

					return node;
				}

				if ( !inOperation && isOperation( node, parent ) ) {
					inOperation = true;
					toLiteralize.push( node );
					parameters = [];
					dependencies = [];
				}

				if ( inOperation ) {
					if ( inMember ) {
						return;
					}

					if ( node.type === 'MemberExpression' ) {
						inMember = node;
						if ( node.object.name !== 'Math' && node.object.name !== 'Utils' ) {
							dependencies.push( escodegen.generate( node ) );
						}
						return;
					}

					if ( node.type === 'Identifier' && node.name !== 'Array' && node.name !== 'Object' ) {
						parameters.push( node.name );
					}
				}
			},
			leave: function( node ) {
				if ( node === inMember ) {
					inMember = false;
				}

				if ( toLiteralize.indexOf( node ) !== -1 ) {
					inOperation = false;
					toLiteralize.splice( toLiteralize.indexOf( node ), 1 );

					var tmp = escodegen.generate( node );

					node.type = 'ObjectExpression';
					node.properties = _.cloneDeep( operation );

					node.properties[0].value.value = tmp;

					node.properties[0].value.raw = '\'' + node.properties[0].value + '\'';

					node.properties[1].value.elements =
						parameters
							.map(function( param ) {
								return {
									type: 'Literal',
									value: param,
									raw: '\'' + param + '\''
								};
							})
							.filter(unique);

					node.properties[2].value.elements =
						dependencies
							.map(function( dep ) {
								// transform contours[0].nodes[1].x into contours.0.nodes.1.x
								// which is invalid javascript but easier to use
								dep = dep.replace( /\[\s*(\d+)\s*\]/g, '.$1' );

								return {
									type: 'Literal',
									value: dep,
									raw: '\'' + dep + '\''
								};
							})
							.filter(unique);

					return node;
				}
			}
		});

		file.contents = new Buffer( escodegen.generate( updatedAst ) );

		this.push(file);

		return cb();
	});

	// returning the file stream
	return stream;
}

// exporting the plugin main function
module.exports = operationalyzer;