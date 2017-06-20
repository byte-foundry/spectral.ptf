exports.glyphs['Y_dieresis'] =
	unicode: 'Ÿ'
	glyphName: 'Ydieresis'
	characterName: 'LATIN CAPITAL LETTER Y WITH DIAERESIS'
	base: 'Y'
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
					x: anchors[0].x + (10)
					y: anchors[0].y - (50/80) * diacriticHeight
