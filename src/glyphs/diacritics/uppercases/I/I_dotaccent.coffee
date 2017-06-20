exports.glyphs['I_dotaccent'] =
	unicode: 'İ'
	glyphName: 'Idotaccent'
	characterName: 'LATIN CAPITAL LETTER I WITH DOT ABOVE'
	base: 'I'
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
					x: anchors[0].x
					y: anchors[0].y - (60/80) * diacriticHeight
					optical: 120
