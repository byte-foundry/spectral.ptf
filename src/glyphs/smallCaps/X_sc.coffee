exports.glyphs['X_sc'] =
	#
	# TODO:
	# LATIN LETTER SMALL CAPITAL X have no unicode for now…
	#
	unicode: 61560
	glyphName: 'xsmall'
	characterName: 'LATIN LETTER SMALL CAPITAL X'
	base: 'X'
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
