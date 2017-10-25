exports.glyphs['O_tilde'] =
	unicode: 'Õ'
	glyphName: 'Otilde'
	characterName: 'LATIN CAPITAL LETTER O WITH TILDE'
	base: 'O_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'tilde'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x - (15)
					y: parentAnchors[0].y + ( 25 / 80 ) * diacriticHeight
			transformOrigin: anchors[0]
			transforms: Array(
				['scaleY', 0.9 ]
			)
