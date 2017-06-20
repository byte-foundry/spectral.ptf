exports.glyphs['A_ring'] =
	unicode: 'Å'
	glyphName: 'Aring'
	characterName: 'LATIN CAPITAL LETTER A WITH RING ABOVE'
	base: 'A'
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
					x: anchors[0].x - (5)
					y: anchors[0].y + (5/80) * diacriticHeight
