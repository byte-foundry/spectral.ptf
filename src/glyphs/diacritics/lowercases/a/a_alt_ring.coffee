exports.glyphs['a_alt_ring'] =
	unicode: 'å'
	glyphName: 'aring'
	characterName: 'LATIN SMALL LETTER A WITH RING ABOVE'
	base: 'a_alt'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'ring'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x - (10)
					y: parentAnchors[0].y + (5/80) * diacriticHeight
