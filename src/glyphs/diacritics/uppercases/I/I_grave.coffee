exports.glyphs['I_grave'] =
	unicode: 'Ì'
	glyphName: 'Igrave'
	characterName: 'LATIN CAPITAL LETTER I WITH GRAVE'
	base: 'I'
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
					x: anchors[0].x
					y: anchors[0].y
			transformOrigin: anchors[0].point
			transforms: Array(
				['scaleY', 0.9 ]
			)
