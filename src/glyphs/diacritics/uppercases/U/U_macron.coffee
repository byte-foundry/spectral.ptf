exports.glyphs['U_macron'] =
	unicode: 'Ū'
	glyphName: 'Umacron'
	characterName: 'LATIN CAPITAL LETTER U WITH MACRON'
	base: 'U_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'macron'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x + (10)
					y: parentAnchors[0].y + (60/80) * diacriticHeight
