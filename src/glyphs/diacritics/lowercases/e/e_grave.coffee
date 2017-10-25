exports.glyphs['e_grave'] =
	unicode: 'è'
	glyphName: 'egrave'
	characterName: 'LATIN SMALL LETTER E WITH GRAVE'
	base: 'e'
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
					x: parentAnchors[0].x + (10)
					y: parentAnchors[0].y
