exports.glyphs['c_cedilla'] =
	unicode: 'ç'
	glyphName: 'ccedilla'
	characterName: 'LATIN SMALL LETTER C WITH CEDILLA'
	base: 'c'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'cedilla'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[1].x
					y: parentAnchors[1].y
