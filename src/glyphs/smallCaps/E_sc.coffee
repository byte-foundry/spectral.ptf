exports.glyphs['E_sc'] =
	unicode: 'ᴇ'
	glyphName: 'esmall'
	characterName: 'LATIN LETTER SMALL CAPITAL E'
	base: 'E_cap'
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
