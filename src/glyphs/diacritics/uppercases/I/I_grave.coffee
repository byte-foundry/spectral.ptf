exports.glyphs['I_grave'] =
	unicode: 'Ì'
	glyphName: 'Igrave'
	characterName: 'LATIN CAPITAL LETTER I WITH GRAVE'
	base: 'I_cap'
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
					x: parentAnchors[0].x
					y: parentAnchors[0].y
			transformOrigin: anchors[0]
			transforms: Array(
				['scaleY', 0.9 ]
			)
