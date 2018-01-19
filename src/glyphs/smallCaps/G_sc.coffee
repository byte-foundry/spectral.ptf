exports.glyphs['G_sc'] =
	unicode: 'ɢ'
	glyphName: 'gsmall'
	characterName: 'LATIN LETTER SMALL CAPITAL G'
	base: 'G_cap'
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
