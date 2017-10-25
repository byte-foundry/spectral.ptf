exports.glyphs['u_grave'] =
	unicode: 'ù'
	glyphName: 'ugrave'
	characterName: 'LATIN SMALL LETTER U WITH GRAVE'
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
			base: 'grave'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x - (5)
					y: parentAnchors[0].y
