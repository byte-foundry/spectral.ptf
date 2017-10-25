exports.glyphs['Z_sc'] =
	unicode: 'ᴢ'
	glyphName: 'zsmall'
	characterName: 'LATIN LETTER SMALL CAPITAL Z'
	base: 'Z_cap'
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
