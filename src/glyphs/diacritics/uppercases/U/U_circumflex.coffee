exports.glyphs['U_circumflex'] =
	unicode: 'Û'
	glyphName: 'Ucircumflex'
	characterName: 'LATIN CAPITAL LETTER U WITH CIRCUMFLEX'
	base: 'U'
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
					x: anchors[0].x + (10)
					y: anchors[0].y
			transformOrigin: anchors[0].point
			transforms: Array(
				['scaleY', 0.9 ]
			)
