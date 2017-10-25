exports.glyphs['o_acute'] =
	unicode: 'ó'
	glyphName: 'oacute'
	characterName: 'LATIN SMALL LETTER O WITH ACUTE'
	base: 'o'
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
					x: parentAnchors[0].x
					y: parentAnchors[0].y
