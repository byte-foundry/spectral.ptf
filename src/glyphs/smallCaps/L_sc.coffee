exports.glyphs['L_sc'] =
	unicode: 'ʟ'
	glyphName: 'lsmall'
	characterName: 'LATIN LETTER SMALL CAPITAL L'
	base: 'L_cap'
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
