exports.glyphs['F_sc'] =
	unicode: 'ꜰ'
	glyphName: 'fsmall'
	characterName: 'LATIN LETTER SMALL CAPITAL F'
	base: 'F_cap'
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
