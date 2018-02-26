exports.glyphs['caron_glyph'] =
	unicode: 'ˇ'
	glyphName: 'caron'
	characterName: 'CARON'
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
			base: 'caron'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
