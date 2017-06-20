exports.glyphs['S_acute'] =
	unicode: 'Ś'
	glyphName: 'Sacute'
	characterName: 'LATIN CAPITAL LETTER S WITH ACUTE'
	base: 'S'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'acute'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y
			transformOrigin: anchors[0].point
			transforms: Array(
				['scaleY', 0.9 ]
			)
