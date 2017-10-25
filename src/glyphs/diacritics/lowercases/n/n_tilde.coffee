exports.glyphs['n_tilde'] =
	unicode: 'ñ'
	glyphName: 'ntilde'
	characterName: 'LATIN SMALL LETTER N WITH TILDE'
	base: 'n'
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
