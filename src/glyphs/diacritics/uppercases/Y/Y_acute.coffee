exports.glyphs['Y_acute'] =
	unicode: 'Ý'
	glyphName: 'Yacute'
	characterName: 'LATIN CAPITAL LETTER Y WITH ACUTE'
	base: 'Y_cap'
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
