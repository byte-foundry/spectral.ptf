exports.glyphs['i_tilde'] =
	unicode: 'ĩ'
	glyphName: 'itilde'
	characterName: 'LATIN SMALL LETTER I WITH TILDE'
	base: 'ı'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
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
