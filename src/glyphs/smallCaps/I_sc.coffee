exports.glyphs['I_sc'] =
	unicode: 'ɪ'
	glyphName: 'ismall'
	characterName: 'LATIN LETTER SMALL CAPITAL I'
	base: 'I_cap'
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
