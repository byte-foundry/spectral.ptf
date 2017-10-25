exports.glyphs['U_grave'] =
	unicode: 'Ù'
	glyphName: 'Ugrave'
	characterName: 'LATIN CAPITAL LETTER U WITH GRAVE'
	base: 'U_cap'
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
					x: parentAnchors[0].x + (10)
					y: parentAnchors[0].y
			transformOrigin: anchors[0]
			transforms: Array(
				['scaleY', 0.9 ]
			)
