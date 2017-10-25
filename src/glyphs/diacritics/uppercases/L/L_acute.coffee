exports.glyphs['L_acute'] =
	unicode: 'Ĺ'
	glyphName: 'Lacute'
	characterName: 'LATIN CAPITAL LETTER L WITH ACUTE'
	base: 'L_cap'
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
					x: parentAnchors[0].x - (15)
					y: parentAnchors[0].y
			transformOrigin: anchors[0]
			transforms: Array(
				['scaleY', 0.9 ]
			)
