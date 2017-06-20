# TODO: width
exports.glyphs['nine'] =
	unicode: '9'
	glyphName: 'nine'
	characterName: 'DIGIT NINE'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 30
		spacingRight: 50 * spacing + 35
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
					x: contours[0].nodes[3].expandedTo[0].x + 50
					y: - overshoot
					dirOut: 15 + 10 + Math.min(
						10 - 10 * width,
						- 10
					) + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 30 / 80 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: Math.max(
						contours[0].nodes[3].expandedTo[0].x + 235 + 200 * width - (25),
						contours[0].nodes[3].expandedTo[1].x + 0.75 * ( 95 / 80 ) * thickness * opticThickness + 10
					)
					y: contours[0].nodes[0].y + ( contours[0].nodes[2].y - contours[0].nodes[0].y ) * ( 435 / 680 )
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 95 / 80 ) * thickness * opticThickness
						angle: - 174 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[3].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[3].expandedTo[0].x ) * ( 215 / 435 )
					y: capHeight + overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 46 / 80 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				3:
					x: spacingLeft + (24/80) * thickness
					y: contours[0].nodes[4].y + ( contours[0].nodes[2].y - contours[0].nodes[4].y ) * ( 190 / 400 )
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.1
					expand: Object({
						width: ( 95 / 80 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[3].expandedTo[0].x + ( contours[0].nodes[5].expandedTo[0].x - contours[0].nodes[3].expandedTo[0].x ) * 0.5
					y: ( 270 / 660 ) * capHeight + (9)
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 77 / 80 ) * thickness * opticThickness * contrast
						angle: 60 + 'deg'
						distr: 0.1
					})
				5:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
					dirIn: (- 90 - 17) / 180 * Math.PI
					expand: Object({
						width: ( 30 / 80 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: contours[0].nodes[5].dirIn - Math.PI / 2
						distr: 1
					})
