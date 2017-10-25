exports.glyphs['B_sc'] =
	unicode: 'ʙ'
	glyphName: 'bsmall'
	characterName: 'LATIN LETTER SMALL CAPITAL B'
	base: 'B_cap'
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
