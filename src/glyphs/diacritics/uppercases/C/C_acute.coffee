exports.glyphs['C_acute'] =
	unicode: 'Ć'
	glyphName: 'Cacute'
	characterName: 'LATIN CAPITAL LETTER C WITH ACUTE'
	base: 'C'
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
					x: anchors[0].x - (10)
					y: anchors[0].y
			transformOrigin: anchors[0].point
			transforms: Array(
				['scaleY', 0.9 ]
			)
