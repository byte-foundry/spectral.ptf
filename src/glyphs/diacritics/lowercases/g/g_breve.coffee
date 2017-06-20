exports.glyphs['g_breve'] =
	unicode: 'ğ'
	glyphName: 'gbreve'
	characterName: 'LATIN SMALL LETTER G WITH BREVE'
	base: 'g'
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
					x: anchors[0].x + (5)
					y: anchors[0].y - (20/80) * diacriticHeight
