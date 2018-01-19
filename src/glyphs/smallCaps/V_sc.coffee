exports.glyphs['V_sc'] =
	unicode: 'ᴠ'
	glyphName: 'vsmall'
	characterName: 'LATIN LETTER SMALL CAPITAL V'
	base: 'V_cap'
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
