exports.glyphs['a_breve'] =
	unicode: 'ă'
	glyphName: 'abreve'
	characterName: 'LATIN SMALL LETTER A WITH BREVE'
	base: 'a'
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
					x: anchors[0].x - (10)
					y: anchors[0].y - (20/80) * diacriticHeight
