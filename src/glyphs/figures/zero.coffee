exports.glyphs['zero'] =
	unicode: '0'
	glyphName: 'zero'
	characterName: 'DIGIT ZERO'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 33
		spacingRight: 50 * spacing + 33
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft + (24/80) * thickness
					y: ( 330 / 660 ) * capHeight + (8)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 100 / 80 ) * thickness
						angle: 18 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * ( 217 / 434 )
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 50 / 80 ) * thickness * contrast
						angle: - 110 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 234 + 200 * width + (4),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 95 / 80 ) * thickness + 10
					)
					y: contours[0].nodes[0].expandedTo[0].y
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 95 / 80 ) * thickness
						angle: - 160 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[1].expandedTo[0].x
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 51 / 80 ) * thickness * contrast
						angle: 72 + 'deg'
						distr: 0
					})
