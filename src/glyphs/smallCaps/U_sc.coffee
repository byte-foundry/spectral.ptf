exports.glyphs['U_sc'] =
	unicode: 'ᴜ'
	glyphName: 'usmall'
	characterName: 'LATIN LETTER SMALL CAPITAL U'
	base: 'U_cap'
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
