exports.glyphs['E_cap_dieresis_cyr'] =
	unicode: 'Ё'
	glyphName: 'JO'
	characterName: 'CYRILLIC CAPITAL LETTER JO'
	base: 'E_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'cyrillic',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'dieresis'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x - (15)
					y: parentAnchors[0].y - (50/80) * diacriticHeight
