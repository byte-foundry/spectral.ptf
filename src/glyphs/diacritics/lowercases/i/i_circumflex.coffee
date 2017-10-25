exports.glyphs['i_circumflex'] =
	unicode: 'î'
	glyphName: 'icircumflex'
	characterName: 'LATIN SMALL LETTER I WITH CIRCUMFLEX'
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
			base: 'circumflex'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x - (5)
					y: parentAnchors[0].y
