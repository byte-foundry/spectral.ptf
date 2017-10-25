exports.glyphs['u_tilde'] =
	unicode: 'ũ'
	glyphName: 'utilde'
	characterName: 'LATIN SMALL LETTER U WITH TILDE'
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
			base: 'tilde'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x - (5)
					y: parentAnchors[0].y + (5/80) * diacriticHeight
