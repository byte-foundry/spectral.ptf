exports.glyphs['R_acute'] =
	unicode: 'Ŕ'
	glyphName: 'Racute'
	characterName: 'LATIN CAPITAL LETTER R WITH ACUTE'
	base: 'R_cap'
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
					x: parentAnchors[0].x + (5)
					y: parentAnchors[0].y
			transformOrigin: anchors[0]
			transforms: Array(
				['scaleY', 0.9 ]
			)
