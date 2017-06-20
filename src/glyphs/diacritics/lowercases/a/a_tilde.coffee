exports.glyphs['a_tilde'] =
	unicode: 'ã'
	glyphName: 'atilde'
	characterName: 'LATIN SMALL LETTER A WITH TILDE'
	base: 'a'
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
					x: anchors[0].x - (15)
					y: anchors[0].y + ( 25 / 80 ) * diacriticHeight
