exports.glyphs['o_tilde'] =
	unicode: 'õ'
	glyphName: 'otilde'
	characterName: 'LATIN SMALL LETTER O WITH TILDE'
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
			base: 'tilde'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y + ( 25 / 80 ) * diacriticHeight
