exports.glyphs['O_macron'] =
	unicode: 'Ō'
	glyphName: 'Omacron'
	characterName: 'LATIN CAPITAL LETTER O WITH MACRON'
	base: 'O_cap'
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
					x: parentAnchors[0].x - (15)
					y: parentAnchors[0].y + (60/80) * diacriticHeight
