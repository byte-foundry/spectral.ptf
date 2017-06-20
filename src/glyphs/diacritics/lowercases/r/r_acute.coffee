exports.glyphs['r_acute'] =
	unicode: 'ŕ'
	glyphName: 'racute'
	characterName: 'LATIN SMALL LETTER R WITH ACUTE'
	base: 'r'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'acute'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x - (5)
					y: anchors[0].y
