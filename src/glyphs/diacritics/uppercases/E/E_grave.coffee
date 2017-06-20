exports.glyphs['E_grave'] =
	unicode: 'È'
	glyphName: 'Egrave'
	characterName: 'LATIN CAPITAL LETTER E WITH GRAVE'
	base: 'E'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'grave'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x - (15)
					y: anchors[0].y
			transformOrigin: anchors[0].point
			transforms: Array(
				['scaleY', 0.9 ]
			)
