exports.glyphs['U_acute'] =
	unicode: 'Ú'
	glyphName: 'Uacute'
	characterName: 'LATIN CAPITAL LETTER U WITH ACUTE'
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
			base: 'acute'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
			transformOrigin: anchors[0]
			transforms: Array(
				['scaleY', 0.9 ]
			)
