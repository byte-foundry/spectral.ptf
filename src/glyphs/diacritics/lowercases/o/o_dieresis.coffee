exports.glyphs['o_dieresis'] =
	unicode: 'ö'
	glyphName: 'odieresis'
	characterName: 'LATIN SMALL LETTER O WITH DIAERESIS'
	base: 'o'
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
					x: anchors[0].x
					y: anchors[0].y - (40/80) * diacriticHeight
