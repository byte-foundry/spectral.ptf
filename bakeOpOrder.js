var through = require('through2');
var _ = require('lodash');
var FontPrecursor = require('prototypo-precursor').default;
const util = require('util');
const vm = require('vm');

function bakeOpOrder() {

	var stream = through.obj(function(file, enc, cb) {
		const fontSrc = JSON.parse(file.contents);

		const font = new FontPrecursor(fontSrc, {resolveOp: false});

		_.forEach(font.glyphs, (glyph, name) => {
			fontSrc.glyphs[name].operationOrder = glyph.operationOrder;
		});

		file.contents = new Buffer(JSON.stringify(fontSrc));

		this.push(file);

		return cb();
	});

	return stream;
}

module.exports = bakeOpOrder;


