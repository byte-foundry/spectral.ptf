exports.glyphs['u_dieresis'] =
	unicode: 'ü'
	glyphName: 'udieresis'
	characterName: 'LATIN SMALL LETTER U WITH DIAERESIS'
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
			base: 'dieresis'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x - (5)
					y: anchors[0].y - (40/80) * diacriticHeight
