exports.glyphs['P_sc'] =
	unicode: 'ᴘ'
	glyphName: 'psmall'
	characterName: 'LATIN LETTER SMALL CAPITAL P'
	base: 'P_cap'
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
