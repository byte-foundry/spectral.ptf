exports.glyphs['A_dieresis'] =
	unicode: 'Ä'
	glyphName: 'Adieresis'
	characterName: 'LATIN CAPITAL LETTER A WITH DIAERESIS'
	base: 'A_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'dieresis'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x - (5)
					y: parentAnchors[0].y - (50/80) * diacriticHeight
