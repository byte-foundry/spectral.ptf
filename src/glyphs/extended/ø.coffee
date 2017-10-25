exports.glyphs['ø'] =
	unicode: 'ø'
	glyphName: 'oslash'
	characterName: 'LATIN SMALL LETTER O WITH STROKE'
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
			base: 'stroke'
			copy: true
			parentAnchors:
				0:
					left: parentAnchors[0].left
					right: parentAnchors[0].right
