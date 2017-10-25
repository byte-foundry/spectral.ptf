exports.glyphs['Y_dieresis'] =
	unicode: 'Ÿ'
	glyphName: 'Ydieresis'
	characterName: 'LATIN CAPITAL LETTER Y WITH DIAERESIS'
	base: 'Y_cap'
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
