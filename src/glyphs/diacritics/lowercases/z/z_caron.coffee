exports.glyphs['z_caron'] =
	unicode: 'ž'
	glyphName: 'zcaron'
	characterName: 'LATIN SMALL LETTER Z WITH CARON'
	base: 'z'
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
					x: anchors[0].x
					y: anchors[0].y
