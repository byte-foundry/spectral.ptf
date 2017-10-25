exports.glyphs['i_acute'] =
	unicode: 'í'
	glyphName: 'iacute'
	characterName: 'LATIN SMALL LETTER I WITH ACUTE'
	base: 'dotlessi'
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
					x: parentAnchors[0].x - (5)
					y: parentAnchors[0].y
