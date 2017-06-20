# TODO: width + relationship between nodes like in nine
exports.glyphs['six'] =
	unicode: '6'
	glyphName: 'six'
	characterName: 'DIGIT SIX'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 35
		spacingRight: 50 * spacing + 30
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[3].expandedTo[0].x - 50
					y: capHeight + overshoot
					dirOut: 195 + 10 - 10 * width + 'deg'
					expand: Object({
						width: ( 30 / 80 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: spacingLeft + (26/80) * thickness
					y: ( 235 / 660 ) * capHeight
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 95 / 80 ) * thickness * opticThickness
						angle: 6 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) * ( 220 / 435 )
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 46 / 80 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				3:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 235 + 200 * width - (24),
						contours[0].nodes[1].expandedTo[1].x + 0.75 * ( 94 / 80 ) * thickness * opticThickness
					)
					y: 196
					dirIn: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 94 / 80 ) * thickness * opticThickness
						angle: - 167 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[5].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[5].expandedTo[0].x ) * ( 200 / 375 )
					y: ( 388 / 660 ) * capHeight
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 78 / 80 ) * thickness * opticThickness * contrast
						angle: - 120 + 'deg'
						distr: 0
					})
				5:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
					dirIn: 77 / 180 * Math.PI
					expand: Object({
						width: ( 30 / 80 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: contours[0].nodes[5].dirIn - Math.PI / 2
						distr: 1
					})
