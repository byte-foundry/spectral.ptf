exports.glyphs['W_sc'] =
	unicode: 'ᴡ'
	glyphName: 'wsmall'
	characterName: 'LATIN LETTER SMALL CAPITAL W'
	base: 'W_cap'
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
