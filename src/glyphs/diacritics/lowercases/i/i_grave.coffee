exports.glyphs['i_grave'] =
	unicode: 'ì'
	glyphName: 'igrave'
	characterName: 'LATIN SMALL LETTER I WITH GRAVE'
	base: 'dotlessi'
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
