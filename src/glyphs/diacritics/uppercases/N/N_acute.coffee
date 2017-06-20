exports.glyphs['N_acute'] =
	unicode: 'Ń'
	glyphName: 'Nacute'
	characterName: 'LATIN CAPITAL LETTER N WITH ACUTE'
	base: 'N'
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
					x: anchors[0].x + (10)
					y: anchors[0].y
			transformOrigin: anchors[0].point
			transforms: Array(
				['scaleY', 0.9 ]
			)
