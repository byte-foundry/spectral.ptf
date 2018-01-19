exports.glyphs['N_sc'] =
	unicode: 'ɴ'
	glyphName: 'nsmall'
	characterName: 'LATIN LETTER SMALL CAPITAL N'
	base: 'N_cap'
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
