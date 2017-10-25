exports.glyphs['D_caron'] =
	unicode: 'Ď'
	glyphName: 'Dcaron'
	characterName: 'LATIN CAPITAL LETTER D WITH CARON'
	base: 'D_cap'
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
					x: parentAnchors[0].x + (10)
					y: parentAnchors[0].y
			transformOrigin: anchors[0]
			transforms: Array(
				['scaleY', 0.9 ]
			)
