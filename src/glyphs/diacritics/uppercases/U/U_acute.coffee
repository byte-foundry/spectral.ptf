exports.glyphs['U_acute'] =
	unicode: 'Ú'
	glyphName: 'Uacute'
	characterName: 'LATIN CAPITAL LETTER U WITH ACUTE'
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
			base: 'acute'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y
			transformOrigin: anchors[0].point
			transforms: Array(
				['scaleY', 0.9 ]
			)
