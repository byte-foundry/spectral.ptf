exports.glyphs['T_caron'] =
	unicode: 'Ť'
	glyphName: 'Tcaron'
	characterName: 'LATIN CAPITAL LETTER T WITH CARON'
	base: 'T_cap'
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
					x: parentAnchors[0].x
					y: parentAnchors[0].y
			transformOrigin: anchors[0]
			transforms: Array(
				['scaleY', 0.9 ]
			)
