exports.glyphs['y_acute'] =
	unicode: 'ý'
	glyphName: 'yacute'
	characterName: 'LATIN SMALL LETTER Y WITH ACUTE'
	base: 'y'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
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
