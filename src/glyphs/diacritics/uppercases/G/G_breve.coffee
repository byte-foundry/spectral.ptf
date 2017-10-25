exports.glyphs['G_breve'] =
	unicode: 'Ğ'
	glyphName: 'Gbreve'
	characterName: 'LATIN CAPITAL LETTER G WITH BREVE'
	base: 'G_cap'
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
					x: parentAnchors[0].x + (10)
					y: parentAnchors[0].y - (20/80) * diacriticHeight
			transformOrigin: anchors[0]
			transforms: Array(
				['scaleY', 0.9 ]
			)
