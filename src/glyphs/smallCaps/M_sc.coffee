exports.glyphs['M_sc'] =
	unicode: 'ᴍ'
	glyphName: 'msmall'
	characterName: 'LATIN LETTER SMALL CAPITAL M'
	base: 'M_cap'
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
