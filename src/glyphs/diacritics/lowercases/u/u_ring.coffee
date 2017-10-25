exports.glyphs['u_ring'] =
	unicode: 'ů'
	glyphName: 'uring'
	characterName: 'LATIN SMALL LETTER U WITH RING ABOVE'
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
			base: 'ring'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x - (5)
					y: parentAnchors[0].y + (5/80) * diacriticHeight
