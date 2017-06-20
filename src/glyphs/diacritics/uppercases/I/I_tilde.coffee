exports.glyphs['I_tilde'] =
	unicode: 'Ĩ'
	glyphName: 'Itilde'
	characterName: 'LATIN CAPITAL LETTER I WITH TILDE'
	base: 'I_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'tilde'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y
