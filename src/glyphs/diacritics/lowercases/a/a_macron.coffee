exports.glyphs['a_macron'] =
	unicode: 'ā'
	glyphName: 'amacron'
	characterName: 'LATIN SMALL LETTER A WITH MACRON'
	base: 'a'
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
					x: anchors[0].x - (10)
					y: anchors[0].y + (65/80) * diacriticHeight
