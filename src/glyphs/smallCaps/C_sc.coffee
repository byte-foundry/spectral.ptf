exports.glyphs['C_sc'] =
	unicode: 'ᴄ'
	glyphName: 'csmall'
	characterName: 'LATIN LETTER SMALL CAPITAL C'
	base: 'C_cap'
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
