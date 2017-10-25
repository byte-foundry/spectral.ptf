exports.glyphs['A_tilde'] =
	unicode: 'Ã'
	glyphName: 'Atilde'
	characterName: 'LATIN CAPITAL LETTER A WITH TILDE'
	base: 'A_cap'
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
					x: parentAnchors[0].x
					y: parentAnchors[0].y + ( 25 / 80 ) * diacriticHeight
			transformOrigin: anchors[0]
			transforms: Array(
				['scaleY', 0.9 ]
			)
