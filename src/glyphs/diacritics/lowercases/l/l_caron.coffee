exports.glyphs['l_caron'] =
	unicode: 'ľ'
	glyphName: 'lcaron'
	characterName: 'LATIN SMALL LETTER L WITH CARON'
	base: 'l'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'caronSlovak'
			copy: true
			parentAnchors:
				0:
					x: anchors[1].x
					y: anchors[1].y
