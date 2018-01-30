exports.glyphs['X_sc'] =
	unicode: 61560
	glyphName: 'xsmall'
	characterName: 'LATIN LETTER SMALL CAPITAL X'
	base: 'X_cap'
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
