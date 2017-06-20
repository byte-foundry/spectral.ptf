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
					x: anchors[0].x
					y: anchors[0].y
