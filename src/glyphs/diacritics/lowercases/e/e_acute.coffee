exports.glyphs['e_acute'] =
	unicode: 'é'
	glyphName: 'eacute'
	characterName: 'LATIN SMALL LETTER E WITH ACUTE'
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
			base: 'acute'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x + (10)
					y: parentAnchors[0].y
