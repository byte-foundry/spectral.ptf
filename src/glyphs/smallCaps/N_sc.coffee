exports.glyphs['N_sc'] =
	unicode: 'ɴ'
	glyphName: 'nsmall'
	characterName: 'LATIN LETTER SMALL CAPITAL N'
	base: 'N_cap'
	advanceWidth: base.advanceWidth
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'smallcap'
	]
	parameters:
		capHeight: scCapHeight
		thickness: scThickness
		width: scWidth
