exports.glyphs['a_alt_grave'] =
	unicode: 'à'
	glyphName: 'agrave'
	characterName: 'LATIN SMALL LETTER A WITH GRAVE'
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
			base: 'grave'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
