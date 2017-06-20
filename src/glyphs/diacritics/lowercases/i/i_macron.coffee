exports.glyphs['i_macron'] =
	unicode: 'ī'
	glyphName: 'imacron'
	characterName: 'LATIN SMALL LETTER I WITH MACRON'
	base: 'ı'
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
