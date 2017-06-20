exports.glyphs['question'] =
	unicode: '?'
	glyphName: 'question'
	characterName: 'QUESTION MARK'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 55
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
					x: spacingLeft + (22/80) * thickness
					y: capHeight - ( 150 / 660 ) * capHeight
					dirOut: 90 + 'deg'
					expand: Object({
						width: ( 88 / 80 ) * thickness * contrastExtremity
						angle: 6 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * ( 205 / 380 )
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 54 / 80 ) * thickness * contrast
						angle: - 125 / 180 * Math.PI
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 180 + 200 * width - (20),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 92 / 80 ) * thickness + 10
					)
					y: contours[1].nodes[1].y + ( (contours[0].nodes[1].y - Math.cos( - contours[0].nodes[1].expand.angle - Math.PI / 2 ) * contours[0].nodes[1].expand.width ) - contours[1].nodes[1].y ) * ( 150 / 280 )
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 92 / 80 ) * thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					dirIn: Math.max(
						Math.min(
							Utils.lineAngle( contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[0].point ) - Math.PI / 2 + 10 - 10 * width,
							Utils.lineAngle( contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[0].point ) - Math.PI / 2
						),
						0
					)
					expand: Object({
						width: ( 85 / 80 ) * thickness
						angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[0].point )
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[1].nodes[1].expandedTo[1].x - ( 16 / 80 ) * thickness,
						contours[1].nodes[1].expandedTo[0].x + 10
					)
					y: Math.min(
						contours[0].nodes[3].y + Math.cos( (-80 / 180 * Math.PI) - contours[0].nodes[3].expand.angle ) * contours[0].nodes[3].expand.width - 10,
						- overshoot + Math.max(
							40,
							Math.min(
								160,
								thickness * ( 120 / 80 )
							)
						) + ( 80 / 660 ) * capHeight
					)
					typeOut: 'line'
					expand: Object({
						width: ( 20 / 80 ) * thickness * contrast * contrastExtremity
						angle: 0 + 'deg'
						distr: 1
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * ( 135 / 380 )
					y: ( 345 / 660 ) * capHeight
					expand: Object({
						width: ( 62 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0
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
					x: contours[2].nodes[0].x + ( contours[2].nodes[4].x - contours[2].nodes[0].x ) * ( 38 / 87 )
					y: contours[0].nodes[0].expandedTo[0].y - ( 40 / 80 ) * thickness
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
						contours[2].nodes[2].y + ( 10 / 80 ) * thickness,
						contours[0].nodes[0].expandedTo[1].y
					)
					typeOut: 'line'
				4:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
	components:
		0:
			base: ['dot']
			id: 'bottom'
			parentAnchors:
				0:
					x: contours[1].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[1].nodes[0].expandedTo[0].x ) * 0.5
					y: - overshoot / 2
