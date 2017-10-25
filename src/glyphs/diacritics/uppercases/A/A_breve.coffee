exports.glyphs['A_breve'] =
	unicode: 'Ă'
	glyphName: 'Abreve'
	characterName: 'LATIN CAPITAL LETTER A WITH BREVE'
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
			base: 'breve'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x - (5)
					y: parentAnchors[0].y - (20/80) * diacriticHeight
			transformOrigin: anchors[0]
			transforms: Array(
				['scaleY', 0.9 ]
			)
