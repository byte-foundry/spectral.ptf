exports.glyphs['e_macron'] =
	unicode: 'ē'
	glyphName: 'emacron'
	characterName: 'LATIN SMALL LETTER E WITH MACRON'
	base: 'e'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'macron'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x + (15)
					y: anchors[0].y + (65/80) * diacriticHeight
