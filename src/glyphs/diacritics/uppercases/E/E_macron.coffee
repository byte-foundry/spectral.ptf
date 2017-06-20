exports.glyphs['E_macron'] =
	unicode: 'Ē'
	glyphName: 'Emacron'
	characterName: 'LATIN CAPITAL LETTER E WITH MACRON'
	base: 'E'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'macron'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x - (15)
					y: anchors[0].y + (60/80) * diacriticHeight
