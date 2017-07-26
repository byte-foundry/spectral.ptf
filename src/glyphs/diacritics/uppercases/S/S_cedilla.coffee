exports.glyphs['S_cedilla'] =
	unicode: 'Ş'
	glyphName: 'uni015E'
	characterName: 'LATIN CAPITAL LETTER S WITH CEDILLA'
	base: 'S_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
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
