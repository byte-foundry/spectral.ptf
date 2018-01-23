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

			for(let i = 0; i < glyph.operationOrder.length; i++) {
				const opAddress = glyph.operationOrder[i];
				if (!(typeof opAddress === 'object')) {
					const operation = glyph.getFromXPath(opAddress);

					if (
						operation.dependencies
						&& operation.dependencies.length === 0
						&& operation.parameters.length === 0
					) {
						const value = operation.getResult();
						_.set(fontSrc.glyphs[name], opAddress, value);
					}
				}
			}
		});

		file.contents = new Buffer(JSON.stringify(fontSrc));

		this.push(file);

		return cb();
	});

	return stream;
}

module.exports = bakeOpOrder;


