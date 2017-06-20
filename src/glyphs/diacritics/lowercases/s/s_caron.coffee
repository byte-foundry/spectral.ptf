exports.glyphs['s_caron'] =
	unicode: 'š'
	glyphName: 'scaron'
	characterName: 'LATIN SMALL LETTER S WITH CARON'
	base: 's'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'caron'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x - (5)
					y: anchors[0].y
