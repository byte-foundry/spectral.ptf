exports.glyphs['o_circumflex'] =
	unicode: 'ô'
	glyphName: 'ocircumflex'
	characterName: 'LATIN SMALL LETTER O WITH CIRCUMFLEX'
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
			base: 'circumflex'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y
