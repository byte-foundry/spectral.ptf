exports.glyphs['s_cedilla'] =
	unicode: 'ş'
	glyphName: 'uni015F'
	characterName: 'LATIN SMALL LETTER S WITH CEDILLA'
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
			base: 'cedilla'
			copy: true
			parentAnchors:
				0:
					x: anchors[1].x
					y: anchors[1].y
