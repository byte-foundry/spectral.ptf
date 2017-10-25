exports.glyphs['E_dieresis'] =
	unicode: 'Ë'
	glyphName: 'Edieresis'
	characterName: 'LATIN CAPITAL LETTER E WITH DIAERESIS'
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
			base: 'dieresis'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x - (15)
					y: parentAnchors[0].y - (50/80) * diacriticHeight
