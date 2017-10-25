exports.glyphs['L_caron'] =
	unicode: 'Ľ'
	glyphName: 'Lcaron'
	characterName: 'LATIN CAPITAL LETTER L WITH CARON'
	base: 'L_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'caronSlovak'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[1].x
					y: parentAnchors[1].y
