exports.glyphs['A_sc'] =
	unicode: 'ᴀ'
	glyphName: 'asmall'
	characterName: 'LATIN LETTER SMALL CAPITAL A'
	base: 'A_cap'
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
