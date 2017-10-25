exports.glyphs['O_dieresis'] =
	unicode: 'Ö'
	glyphName: 'Odieresis'
	characterName: 'LATIN CAPITAL LETTER O WITH DIAERESIS'
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
			base: 'dieresis'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x - (15)
					y: parentAnchors[0].y - (50/80) * diacriticHeight
