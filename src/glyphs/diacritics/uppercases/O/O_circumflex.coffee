exports.glyphs['O_circumflex'] =
	unicode: 'Ô'
	glyphName: 'Ocircumflex'
	characterName: 'LATIN CAPITAL LETTER O WITH CIRCUMFLEX'
	base: 'O_cap'
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
					x: parentAnchors[0].x - (15)
					y: parentAnchors[0].y
			transformOrigin: anchors[0]
			transforms: Array(
				['scaleY', 0.9 ]
			)
