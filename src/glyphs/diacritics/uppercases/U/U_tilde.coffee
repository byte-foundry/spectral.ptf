exports.glyphs['U_tilde'] =
	unicode: 'Ũ'
	glyphName: 'Utilde'
	characterName: 'LATIN CAPITAL LETTER U WITH TILDE'
	base: 'U_cap'
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
