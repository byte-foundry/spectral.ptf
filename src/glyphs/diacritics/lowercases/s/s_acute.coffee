exports.glyphs['s_acute'] =
	unicode: 'ś'
	glyphName: 'sacute'
	characterName: 'LATIN SMALL LETTER S WITH ACUTE'
	base: 's'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'acute'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x - (5)
					y: anchors[0].y
