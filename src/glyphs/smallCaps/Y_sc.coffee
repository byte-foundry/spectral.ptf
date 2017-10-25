exports.glyphs['Y_sc'] =
	unicode: 'ʏ'
	glyphName: 'ysmall'
	characterName: 'LATIN LETTER SMALL CAPITAL Y'
	base: 'Y_cap'
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
