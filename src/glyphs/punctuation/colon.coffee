exports.glyphs['colon'] =
	unicode: ':'
	glyphName: 'colon'
	characterName: 'COLON'
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
			id: 'bottom'
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
			id: 'top'
			parentAnchors:
				0:
					x: ( spacingLeft + Math.max(
						40,
						Math.min(
							160,
							thickness * ( 120 / 80 )
						)
					) + spacingRight ) / 2
					y: Math.min(
						xHeight,
						Math.max(
							( 450 / 80 ) * thickness,
							xHeight / 2
						)
					)
			transformOrigin: { x: 0, y: 0 }
			transforms: Array(
				[ 'translateY', - Math.max(
					40,
					Math.min(
						160,
						thickness * ( 120 / 80 )
					)
				)]
			)
