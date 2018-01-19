exports.glyphs['J_sc'] =
	unicode: 'ᴊ'
	glyphName: 'jsmall'
	characterName: 'LATIN LETTER SMALL CAPITAL J'
	base: 'J_cap'
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
