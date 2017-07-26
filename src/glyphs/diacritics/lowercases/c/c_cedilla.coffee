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
					x: anchors[1].x
					y: anchors[1].y
