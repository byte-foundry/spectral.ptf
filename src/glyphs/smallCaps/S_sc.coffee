exports.glyphs['S_sc'] =
	unicode: 'ꜱ'
	glyphName: 'ssmall'
	characterName: 'LATIN LETTER SMALL CAPITAL S'
	base: 'S_cap'
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
