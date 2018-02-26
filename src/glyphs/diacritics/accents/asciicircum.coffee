exports.glyphs['asciicircum'] =
	unicode: '^'
	glyphName: 'asciicircum'
	characterName: 'CIRCUMFLEX ACCENT'
	ot:
		advanceWidth: spacingLeft + 250 * width + spacingRight
	parameters:
		spacingLeft: 50 * spacing + 45
		spacingRight: 50 * spacing + 45
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	anchors:
		0:
			x: spacingLeft + 125 * width
			y: xHeight + diacriticHeight
	components:
		0:
			base: 'circumflex'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
