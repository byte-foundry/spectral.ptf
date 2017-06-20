exports.glyphs['A_circumflex'] =
	unicode: 'Â'
	glyphName: 'Acircumflex'
	characterName: 'LATIN CAPITAL LETTER A WITH CIRCUMFLEX'
	base: 'A'
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
					x: anchors[0].x - (5)
					y: anchors[0].y
			transformOrigin: anchors[0].point
			transforms: Array(
				['scaleY', 0.9 ]
			)
