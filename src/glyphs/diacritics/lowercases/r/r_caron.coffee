exports.glyphs['r_caron'] =
	unicode: 'ř'
	glyphName: 'rcaron'
	characterName: 'LATIN SMALL LETTER R WITH CARON'
	base: 'r'
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
					x: anchors[0].x - (5)
					y: anchors[0].y
