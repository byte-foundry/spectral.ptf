exports.glyphs['I_dieresis'] =
	unicode: 'Ï'
	glyphName: 'Idieresis'
	characterName: 'LATIN CAPITAL LETTER I WITH DIAERESIS'
	base: 'I'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'dieresis'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y - (50/80) * diacriticHeight
