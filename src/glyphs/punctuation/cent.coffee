exports.glyphs['cent'] =
	unicode: '¢'
	glyphName: 'cent'
	characterName: 'CENT SIGN'
	base: 'c'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	components:
		0:
			base: 'line'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: xHeight
