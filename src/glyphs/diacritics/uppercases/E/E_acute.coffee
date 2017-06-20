exports.glyphs['E_acute'] =
	unicode: 'É'
	glyphName: 'Eacute'
	characterName: 'LATIN CAPITAL LETTER E WITH ACUTE'
	base: 'E'
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
					x: anchors[0].x - (15)
					y: anchors[0].y
			transformOrigin: anchors[0].point
			transforms: Array(
				['scaleY', 0.9 ]
			)
