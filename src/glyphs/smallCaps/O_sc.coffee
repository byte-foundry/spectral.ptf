exports.glyphs['O_sc'] =
	unicode: 'ᴏ'
	glyphName: 'osmall'
	characterName: 'LATIN LETTER SMALL CAPITAL O'
	base: 'O_cap'
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
