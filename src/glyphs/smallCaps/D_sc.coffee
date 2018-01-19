exports.glyphs['D_sc'] =
	unicode: 'ᴅ'
	glyphName: 'dsmall'
	characterName: 'LATIN LETTER SMALL CAPITAL D'
	base: 'D_cap'
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
