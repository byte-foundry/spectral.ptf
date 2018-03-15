exports.glyphs['ё_cyr'] =
	unicode: 'ё'
	glyphName: 'ё'
	characterName: 'CYRILLIC SMALL LETTER ё'
	base: 'e'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'cyrillic',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'dieresis'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x + (10)
					y: parentAnchors[0].y - (40/80) * diacriticHeight
