exports.glyphs['Y_acute'] =
	unicode: 'Ý'
	glyphName: 'Yacute'
	characterName: 'LATIN CAPITAL LETTER Y WITH ACUTE'
	base: 'Y'
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
