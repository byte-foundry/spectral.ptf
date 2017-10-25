exports.glyphs['A_acute'] =
	unicode: 'Á'
	glyphName: 'Aacute'
	characterName: 'LATIN CAPITAL LETTER A WITH ACUTE'
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
			base: 'acute'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x - (10)
					y: parentAnchors[0].y
			transformOrigin: anchors[0]
			transforms: Array(
				['scaleY', 0.9 ]
			)
