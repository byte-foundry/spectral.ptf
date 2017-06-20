exports.glyphs['e_dotaccent'] =
	unicode: 'ė'
	glyphName: 'edotaccent'
	characterName: 'LATIN SMALL LETTER E WITH DOT ABOVE'
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
			base: 'dotaccent'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x + (20)
					y: anchors[0].y - (27/80) * diacriticHeight
					optical: 120
