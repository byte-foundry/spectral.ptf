exports.glyphs['i_dieresis'] =
	unicode: 'ï'
	glyphName: 'idieresis'
	characterName: 'LATIN SMALL LETTER I WITH DIAERESIS'
	base: 'dotlessi'
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
					x: parentAnchors[0].x - (5)
					y: parentAnchors[0].y - (40/80) * diacriticHeight
