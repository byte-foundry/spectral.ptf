exports.glyphs['e_dieresis'] =
	unicode: 'ë'
	glyphName: 'edieresis'
	characterName: 'LATIN SMALL LETTER E WITH DIAERESIS'
	base: 'e'
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
					x: anchors[0].x + (10)
					y: anchors[0].y - (40/80) * diacriticHeight
