exports.glyphs['E_tilde'] =
	unicode: 'Ẽ'
	glyphName: 'Etilde'
	characterName: 'LATIN CAPITAL LETTER E WITH TILDE'
	base: 'E_cap'
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
					x: parentAnchors[0].x
					y: parentAnchors[0].y
