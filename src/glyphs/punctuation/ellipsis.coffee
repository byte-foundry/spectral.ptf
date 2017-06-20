exports.glyphs['ellipsis'] =
	unicode: '…'
	glyphName: 'ellipsis'
	characterName: 'HORIZONTAL ELLIPSIS'
	ot:
		advanceWidth: ( spacingLeft + Math.max(
			40,
			Math.min(
				160,
				thickness * ( 120 / 80 )
			)
		) + spacingRight ) + 75 + ( spacingLeft + Math.max(
			40,
			Math.min(
				160,
				thickness * ( 120 / 80 )
			)
		) + spacingRight ) + 75
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
			id: 'first'
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
		1:
			base: ['dot']
			id: 'second'
			parentAnchors:
				0:
					x: ( spacingLeft + Math.max(
						40,
						Math.min(
							160,
							thickness * ( 120 / 80 )
						)
					) + spacingRight ) + 75
					y: - overshoot
		2:
			base: ['dot']
			id: 'third'
			parentAnchors:
				0:
					x: ( spacingLeft + Math.max(
						40,
						Math.min(
							160,
							thickness * ( 120 / 80 )
						)
					) + spacingRight ) + 75 + ( spacingLeft + Math.max(
						40,
						Math.min(
							160,
							thickness * ( 120 / 80 )
						)
					) + spacingRight ) / 2 + 75
					y: - overshoot
