exports.glyphs['u_acute'] =
	unicode: 'ú'
	glyphName: 'uacute'
	characterName: 'LATIN SMALL LETTER U WITH ACUTE'
	base: 'u'
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
					x: anchors[0].x - (5)
					y: anchors[0].y
