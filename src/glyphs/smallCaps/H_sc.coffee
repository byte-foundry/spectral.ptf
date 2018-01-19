exports.glyphs['H_sc'] =
	unicode: 'ʜ'
	glyphName: 'hsmall'
	characterName: 'LATIN LETTER SMALL CAPITAL H'
	base: 'H_cap'
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
