exports.glyphs['n_caron'] =
	unicode: 'ň'
	glyphName: 'ncaron'
	characterName: 'LATIN SMALL LETTER N WITH CARON'
	base: 'n'
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
					x: parentAnchors[0].x
					y: parentAnchors[0].y
