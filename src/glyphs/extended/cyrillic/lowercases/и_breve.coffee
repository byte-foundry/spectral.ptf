exports.glyphs['й'] =
	unicode: 'й'
	glyphName: 'й'
	characterName: 'CYRILLIC SMALL LETTER и WITH BREVE'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'cyrillic',
		'lowercase',
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
