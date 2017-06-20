exports.glyphs['y_dieresis'] =
	unicode: 'ÿ'
	glyphName: 'ydieresis'
	characterName: 'LATIN SMALL LETTER Y WITH DIAERESIS'
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
			base: 'dieresis'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x - (15)
					y: anchors[0].y - (40/80) * diacriticHeight
