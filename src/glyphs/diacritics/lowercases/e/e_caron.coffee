exports.glyphs['e_caron'] =
	unicode: 'ě'
	glyphName: 'ecaron'
	characterName: 'LATIN SMALL LETTER E WITH CARON'
	base: 'e'
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
					x: anchors[0].x + (10)
					y: anchors[0].y
