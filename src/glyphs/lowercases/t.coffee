exports.glyphs['t'] =
	unicode: 't'
	glyphName: 't'
	characterName: 'LATIN SMALL LETTER T'
	ot:
		advanceWidth: contours[1].nodes[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 18
		spacingRight: 50 * spacing + 30
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: Math.max(
				contours[1].nodes[4].expandedTo[1].x + thickness + 90 + (20),
				contours[0].nodes[2].expandedTo[0].x - 35
			)
			y: ascenderHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: ( 6 / 80 ) * thickness * contrast * contrastExtremity
						angle: - 90 + 'deg'
						distr: 1
					})
				1:
					x: contours[0].nodes[0].x + 72 * width + ( 10 / 80 ) * thickness
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 47 / 80 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: contours[1].nodes[3].expandedTo[1].x + 132 * width
					y: xHeight
					expand: Object({
						width: ( 47 / 80 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].x + 12
					y: Math.max(
						53 + (1),
						contours[1].nodes[1].y + Math.sin( 55 / 180 * Math.PI ) * ( 82 / 80 ) * thickness * contrast - 3
					)
					dirOut: Math.max(
						- 116 / 180 * Math.PI,
						Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ) + 30 / 180 * Math.PI
					)
					expand: Object({
						width: ( 10 / 80 ) * thickness * contrast * contrastExtremity
						angle: 108 + 'deg'
						distr: 0.1
					})
				1:
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[0].x - contours[1].nodes[2].expandedTo[0].x ) * 0.5 - (4)
					y: - overshoot
					dirIn: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( (41 + 41 * contrast) / 80 ) * thickness
						# angle: 55 + 'deg'
						angle: Math.max(
							Math.atan2(
								((( 82 / 80 ) * thickness * opticThickness * contrast) + overshoot),
								(( contours[0].nodes[2].expandedTo[1].x + contours[0].nodes[0].x ) * 0.5 - contours[0].nodes[1].x)
							),
							Utils.lineAngle( contours[0].nodes[1].point, contours[0].nodes[0].point )
						)
						distr: 0
					})
				2:
					x: contours[1].nodes[3].expandedTo[0].x
					y: Math.max(
						90,
						contours[1].nodes[1].y + Math.sin( 55 / 180 * Math.PI ) * ( 82 / 80 ) * thickness + 33
					)
					dirIn: - 90 + 'deg'
					expand: Object({
						width: ( 82 / 80 ) * thickness
						angle: 12 + 'deg'
						distr: 0
					})
				3:
					x: contours[0].nodes[1].x
					y: xHeight
					typeIn: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0
					})
				4:
					x: contours[1].nodes[3].expandedTo[1].x
					y: Math.max(
						xHeight + ( (80 + (30 / 80) * thickness ) / 750 ) * ascenderHeight,
						xHeight + 50
					)
					typeIn: 'line'
					expand: Object({
						width: ( 6 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 1
					})
