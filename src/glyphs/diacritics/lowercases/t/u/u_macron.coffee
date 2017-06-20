exports.glyphs['u_macron'] =
	unicode: 'ū'
	glyphName: 'umacron'
	characterName: 'LATIN SMALL LETTER U WITH MACRON'
	base: 'u'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'macron'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x - (5)
					y: anchors[0].y + (65/80) * diacriticHeight
