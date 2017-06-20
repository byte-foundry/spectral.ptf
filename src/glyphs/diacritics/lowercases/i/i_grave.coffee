exports.glyphs['i_grave'] =
	unicode: 'ì'
	glyphName: 'igrave'
	characterName: 'LATIN SMALL LETTER I WITH GRAVE'
	base: 'ı'
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
					x: anchors[0].x - (5)
					y: anchors[0].y
