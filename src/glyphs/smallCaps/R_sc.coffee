exports.glyphs['R_sc'] =
	unicode: 'ʀ'
	glyphName: 'rsmall'
	characterName: 'LATIN LETTER SMALL CAPITAL R'
	base: 'R_cap'
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
