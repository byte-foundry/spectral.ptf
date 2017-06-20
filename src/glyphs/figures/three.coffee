exports.glyphs['three'] =
	unicode: '3'
	glyphName: 'three'
	characterName: 'DIGIT THREE'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 33
		spacingRight: 50 * spacing + 23
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
					x: contours[1].nodes[3].expandedTo[0].x + 20 + (23/80) * thickness * opticThickness
					y: capHeight - ( 133 / 660 ) * capHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 90 / 80 ) * thickness * opticThickness
						angle: 7 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * ( 210 / 390 )
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 50 / 80 ) * thickness * opticThickness * contrast
						angle: - 115 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 190 + 200 * width - (23),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 97 / 80 ) * thickness * opticThickness + 10
					)
					y: ( contours[0].nodes[3].y + ( 20 / 80 ) * thickness * opticThickness ) + ( ( capHeight + overshoot - ( Math.sin( 57 / 180 * Math.PI ) * ( 56 / 80 ) * thickness * opticThickness * contrast ) ) - ( contours[0].nodes[3].y + ( 20 / 80 ) * thickness * opticThickness ) ) * ( 165 / 278 )
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 97 / 80 ) * thickness * opticThickness
						angle: - 175 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * ( 95 / 390 )
					y: ( 348 / 660 ) * capHeight
					dirIn: 0 + 'deg'
					tensionIn: 1.1
					type: 'smooth'
					expand: Object({
						width: ( 20 / 80 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[3].expandedTo[0].x
					y: contours[0].nodes[3].expandedTo[1].y
					dirOut: 4 + 'deg'
					type: 'smooth'
					tensionOut: 1.1
					expand: Object({
						width: ( 44 / 80 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: Math.max(
						contours[0].nodes[2].x,
						contours[0].nodes[2].expandedTo[1].x
					) + 25
					y: ( 175 / 660 ) * capHeight
					dirIn: 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.1
					expand: Object({
						width: ( 96 / 80 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.3
					})
				2:
					x: contours[1].nodes[3].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[1].nodes[3].expandedTo[0].x ) * ( 210 / 445 )
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 45 / 80 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				3:
					x: spacingLeft + (22/80) * thickness * opticThickness
					y: ( 120 / 660 ) * capHeight
					dirIn: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 90 / 80 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					dirOut: - 90 + 'deg'
				1:
					x: contours[2].nodes[0].x + ( contours[2].nodes[4].x - contours[2].nodes[0].x ) * ( 40 / 90 )
					y: contours[0].nodes[0].expandedTo[0].y - ( 35 / 80 ) * thickness * opticThickness
					typeOut: 'line'
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[1].x - ( 8 / 80 ) * thickness,
						contours[0].nodes[0].expandedTo[0].x
					)
					y: contours[2].nodes[1].y
					typeOut: 'line'
				3:
					x: contours[0].nodes[0].expandedTo[1].x
					y: Math.min(
						contours[2].nodes[2].y + ( 8 / 80 ) * thickness,
						contours[0].nodes[0].expandedTo[1].y
					)
					typeOut: 'line'
				4:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[3].expandedTo[0].x
					y: contours[1].nodes[3].expandedTo[0].y
					dirOut: 90 + 'deg'
				1:
					x: contours[3].nodes[0].x + ( contours[3].nodes[4].x - contours[3].nodes[0].x ) * ( 35 / 90 )
					y: contours[1].nodes[3].expandedTo[0].y + ( 35 / 80 ) * thickness * opticThickness
					typeOut: 'line'
				2:
					x: Math.max(
						contours[1].nodes[3].expandedTo[1].x - ( 8 / 80 ) * thickness,
						contours[1].nodes[3].expandedTo[0].x
					)
					y: contours[3].nodes[1].y
					typeOut: 'line'
				3:
					x: contours[1].nodes[3].expandedTo[1].x
					y: Math.max(
						contours[3].nodes[2].y - ( 8 / 80 ) * thickness,
						contours[1].nodes[3].expandedTo[1].y
					)
					typeOut: 'line'
				4:
					x: contours[1].nodes[3].expandedTo[1].x
					y: contours[1].nodes[3].expandedTo[1].y
					typeOut: 'line'
