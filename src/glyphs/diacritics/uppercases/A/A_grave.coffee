exports.glyphs['A_grave'] =
	unicode: 'À'
	glyphName: 'Agrave'
	characterName: 'LATIN CAPITAL LETTER A WITH GRAVE'
	base: 'A_cap'
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
					x: parentAnchors[0].x - (10)
					y: parentAnchors[0].y
			transformOrigin: anchors[0]
			transforms: Array(
				['scaleY', 0.9 ]
			)
