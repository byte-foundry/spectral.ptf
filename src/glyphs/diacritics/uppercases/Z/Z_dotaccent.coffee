exports.glyphs['Z_dotaccent'] =
	unicode: 'Ż'
	glyphName: 'Zdotaccent'
	characterName: 'LATIN CAPITAL LETTER Z WITH DOT ABOVE'
	base: 'Z'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'dotaccent'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x + (10)
					y: anchors[0].y - (60/80) * diacriticHeight
					optical: 120
