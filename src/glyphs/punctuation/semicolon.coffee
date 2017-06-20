exports.glyphs['semicolon'] =
	unicode: ';'
	glyphName: 'semicolon'
	characterName: 'COLON'
	base: ','
	advanceWidth: base.advanceWidth
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 55
		spacingRight: 50 * spacing + 50
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	components:
		0:
			base: ['dot']
			id: 'top'
			parentAnchors:
				0:
					x: anchors[0].dot
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
