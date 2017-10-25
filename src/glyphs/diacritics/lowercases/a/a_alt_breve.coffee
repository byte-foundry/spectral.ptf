exports.glyphs['a_alt_breve'] =
	unicode: 'ă'
	glyphName: 'abreve'
	characterName: 'LATIN SMALL LETTER A WITH BREVE'
	base: 'a_alt'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'breve'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x - (10)
					y: parentAnchors[0].y - (20/80) * diacriticHeight
