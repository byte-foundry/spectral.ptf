exports.glyphs['U_ring'] =
	unicode: 'Ů'
	glyphName: 'Uring'
	characterName: 'LATIN CAPITAL LETTER U WITH RING ABOVE'
	base: 'U'
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
					x: anchors[0].x + (5)
					y: anchors[0].y + (5/80) * diacriticHeight
