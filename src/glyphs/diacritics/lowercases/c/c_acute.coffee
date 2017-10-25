exports.glyphs['c_acute'] =
	unicode: 'ć'
	glyphName: 'cacute'
	characterName: 'LATIN SMALL LETTER C WITH ACUTE'
	base: 'c'
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
					x: parentAnchors[0].x + (25)
					y: parentAnchors[0].y
