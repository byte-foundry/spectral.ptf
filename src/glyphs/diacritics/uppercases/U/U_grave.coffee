exports.glyphs['U_grave'] =
	unicode: 'Ù'
	glyphName: 'Ugrave'
	characterName: 'LATIN CAPITAL LETTER U WITH GRAVE'
	base: 'U'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'grave'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x + (10)
					y: anchors[0].y
			transformOrigin: anchors[0].point
			transforms: Array(
				['scaleY', 0.9 ]
			)
