exports.glyphs['D_caron'] =
	unicode: 'Ď'
	glyphName: 'Dcaron'
	characterName: 'LATIN CAPITAL LETTER D WITH CARON'
	base: 'D'
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
