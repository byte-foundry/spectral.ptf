exports.glyphs['T_sc'] =
	unicode: 'ᴛ'
	glyphName: 'tsmall'
	characterName: 'LATIN LETTER SMALL CAPITAL T'
	base: 'T_cap'
	advanceWidth: base.advanceWidth
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
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
