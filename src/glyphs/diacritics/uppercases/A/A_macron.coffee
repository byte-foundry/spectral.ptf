exports.glyphs['A_macron'] =
	unicode: 'Ā'
	glyphName: 'Amacron'
	characterName: 'LATIN CAPITAL LETTER A WITH MACRON'
	base: 'A'
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
					x: anchors[0].x - (5)
					y: anchors[0].y + (60/80) * diacriticHeight
