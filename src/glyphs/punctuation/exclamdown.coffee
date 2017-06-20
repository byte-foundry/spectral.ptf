exports.glyphs['exclamdown'] =
	unicode: '¡'
	glyphName: 'exclamdown'
	characterName: 'INVERTED EXCLAMATION MARK'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg'],
		['scaleY', -1],
		['translateY', - xHeight]
	)
	parameters:
		spacingLeft: 50 * spacing + 65
		spacingRight: 50 * spacing + 65
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 5 + ( 55 / 80 ) * thickness
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 80 ) * minThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: - overshoot + Math.max(
						40,
						Math.min(
							160,
							thickness * ( 120 / 80 )
						)
					) + ( 80 / 660 ) * capHeight
					expand: Object({
						width: ( 20 / 80 ) * thickness * contrast * contrastExtremity
						angle: 0 + 'deg'
						distr: 0.5
					})
	components:
		0:
			base: ['dot']
			id: 'bottom'
			parentAnchors:
				0:
					x: contours[0].nodes[0].x
					y: - overshoot
