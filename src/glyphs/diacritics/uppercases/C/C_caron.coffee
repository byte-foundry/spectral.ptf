exports.glyphs['C_caron'] =
	unicode: 'Č'
	glyphName: 'Ccaron'
	characterName: 'LATIN CAPITAL LETTER C WITH CARON'
	base: 'C'
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
					x: anchors[0].x + (10)
					y: anchors[0].y
			transformOrigin: anchors[0].point
			transforms: Array(
				['scaleY', 0.9 ]
			)
