exports.glyphs['a_alt_acute'] =
	unicode: 'á'
	glyphName: 'aacute'
	characterName: 'LATIN SMALL LETTER A WITH ACUTE'
	base: 'a_alt'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'acute'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
