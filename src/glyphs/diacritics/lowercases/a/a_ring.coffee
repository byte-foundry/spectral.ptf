exports.glyphs['a_ring'] =
	unicode: 'å'
	glyphName: 'aring'
	characterName: 'LATIN SMALL LETTER A WITH RING ABOVE'
	base: 'a'
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
					x: anchors[0].x - (10)
					y: anchors[0].y + (5/80) * diacriticHeight
