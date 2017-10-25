exports.glyphs['U_dieresis'] =
	unicode: 'Ü'
	glyphName: 'Udieresis'
	characterName: 'LATIN CAPITAL LETTER U WITH DIAERESIS'
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
			base: 'dieresis'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x + (10)
					y: parentAnchors[0].y - (50/80) * diacriticHeight
