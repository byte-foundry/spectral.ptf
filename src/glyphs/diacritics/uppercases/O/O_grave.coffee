exports.glyphs['O_grave'] =
	unicode: 'Ò'
	glyphName: 'Ograve'
	characterName: 'LATIN CAPITAL LETTER O WITH ACUTE'
	base: 'O'
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
