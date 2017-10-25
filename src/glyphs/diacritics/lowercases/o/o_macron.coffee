exports.glyphs['o_macron'] =
	unicode: 'ō'
	glyphName: 'omacron'
	characterName: 'LATIN SMALL LETTER O WITH MACRON'
	base: 'o'
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
					x: parentAnchors[0].x
					y: parentAnchors[0].y + (65/80) * diacriticHeight
