exports.glyphs['A_acute'] =
	unicode: 'Á'
	glyphName: 'Aacute'
	characterName: 'LATIN CAPITAL LETTER A WITH ACUTE'
	base: 'A'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'acute'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x - (10)
					y: anchors[0].y
			transformOrigin: anchors[0].point
			transforms: Array(
				['scaleY', 0.9 ]
			)
