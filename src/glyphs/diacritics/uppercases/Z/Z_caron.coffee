exports.glyphs['Z_caron'] =
	unicode: 'Ž'
	glyphName: 'Zcaron'
	characterName: 'LATIN CAPITAL LETTER Z WITH ACUTE'
	base: 'Z_cap'
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
					x: parentAnchors[0].x + (15)
					y: parentAnchors[0].y
			transformOrigin: anchors[0]
			transforms: Array(
				['scaleY', 0.9 ]
			)
