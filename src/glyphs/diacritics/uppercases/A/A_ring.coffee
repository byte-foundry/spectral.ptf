exports.glyphs['A_ring'] =
	unicode: 'Å'
	glyphName: 'Aring'
	characterName: 'LATIN CAPITAL LETTER A WITH RING ABOVE'
	base: 'A_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'ring'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x - (5)
					y: parentAnchors[0].y + (5/80) * diacriticHeight
