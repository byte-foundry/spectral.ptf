exports.glyphs['Q_sc'] =
	unicode: 'ǫ'
	glyphName: 'qsmall'
	characterName: 'LATIN LETTER SMALL CAPITAL Q'
	base: 'Q_cap'
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
