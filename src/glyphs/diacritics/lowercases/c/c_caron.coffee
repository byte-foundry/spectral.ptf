exports.glyphs['c_caron'] =
	unicode: 'č'
	glyphName: 'ccaron'
	characterName: 'LATIN SMALL LETTER C WITH CARON'
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
			base: 'caron'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x + (25)
					y: parentAnchors[0].y
