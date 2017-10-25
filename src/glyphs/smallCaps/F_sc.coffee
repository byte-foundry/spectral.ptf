exports.glyphs['F_sc'] =
	unicode: 'ꜰ'
	glyphName: 'fsmall'
	characterName: 'LATIN LETTER SMALL CAPITAL F'
	base: 'F_cap'
	advanceWidth: base.advanceWidth
	transforms: Array(
		['skewX', slant + 'deg']
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
