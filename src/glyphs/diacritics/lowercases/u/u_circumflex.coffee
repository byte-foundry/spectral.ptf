exports.glyphs['u_circumflex'] =
	unicode: 'û'
	glyphName: 'ucircumflex'
	characterName: 'LATIN SMALL LETTER U WITH CIRCUMFLEX'
	base: 'u'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'circumflex'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x - (5)
					y: parentAnchors[0].y
