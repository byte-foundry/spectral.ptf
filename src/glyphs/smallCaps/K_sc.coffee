exports.glyphs['K_sc'] =
	unicode: 'ᴋ'
	glyphName: 'ksmall'
	characterName: 'LATIN LETTER SMALL CAPITAL K'
	base: 'K_cap'
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
