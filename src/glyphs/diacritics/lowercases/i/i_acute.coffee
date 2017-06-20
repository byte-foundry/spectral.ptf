exports.glyphs['i_acute'] =
	unicode: 'í'
	glyphName: 'iacute'
	characterName: 'LATIN SMALL LETTER I WITH ACUTE'
	base: 'ı'
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
