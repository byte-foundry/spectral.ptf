exports.glyphs['E_dotaccent'] =
	unicode: 'Ė'
	glyphName: 'Edotaccent'
	characterName: 'LATIN CAPITAL LETTER E WITH DOT ABOVE'
	base: 'E_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'dotaccent'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x - (10)
					y: parentAnchors[0].y - (60/80) * diacriticHeight
					optical: 120
