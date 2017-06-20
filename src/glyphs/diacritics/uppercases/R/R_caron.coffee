exports.glyphs['R_caron'] =
	unicode: 'Ř'
	glyphName: 'Rcaron'
	characterName: 'LATIN CAPITAL LETTER R WITH CARON'
	base: 'R'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'caron'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x + (15)
					y: anchors[0].y
			transformOrigin: anchors[0].point
			transforms: Array(
				['scaleY', 0.9 ]
			)
