exports.glyphs['E_circumflex'] =
	unicode: 'Ê'
	glyphName: 'Ecircumflex'
	characterName: 'LATIN CAPITAL LETTER E WITH CIRCUMFLEX'
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
			base: 'circumflex'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x - (15)
					y: anchors[0].y
			transformOrigin: anchors[0].point
			transforms: Array(
				['scaleY', 0.9 ]
			)
