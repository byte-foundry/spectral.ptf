exports.glyphs['z_dotaccent'] =
	unicode: 'ż'
	glyphName: 'zdotaccent'
	characterName: 'LATIN SMALL LETTER Z WITH DOT ABOVE'
	base: 'z'
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
					x: anchors[0].x + (5)
					y: anchors[0].y - (27/80) * diacriticHeight
					optical: 120
