exports.glyphs['N_breve_cap'] =
	unicode: 'Й'
	glyphName: 'Йbreve'
	characterName: 'CYRILLIC CAPITAL LETTER Й'
	base: 'И_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'cyrillic',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'breve_cyr'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x + (10)
					y: parentAnchors[0].y - (20/80) * diacriticHeight
			transformOrigin: anchors[0]
			transforms: Array(
				['scaleY', 0.9 ]
			)
