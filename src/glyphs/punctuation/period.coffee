exports.glyphs['period'] =
	unicode: '.'
	glyphName: 'period'
	characterName: 'FULL STOP'
	ot:
		advanceWidth: spacingLeft + Math.max(
			40,
			Math.min(
				160,
				thickness * ( 120 / 80 )
			)
		) + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 65
		spacingRight: 50 * spacing + 65
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	components:
		0:
			base: ['dot']
			id: 'unique'
			parentAnchors:
				0:
					x: ( spacingLeft + Math.max(
						40,
						Math.min(
							160,
							thickness * ( 120 / 80 )
						)
					) + spacingRight ) / 2
					y: - overshoot
