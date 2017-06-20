exports.glyphs['comma'] =
	unicode: ','
	glyphName: 'comma'
	characterName: 'COMMA'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
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
	anchors:
		0:
			dot: contours[0].nodes[0].expandedTo[1].x - 10
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 35
					y: 0
					type: 'smooth'
					expand: Object({
						width: ( 100 / 80 ) * minThickness
						angle: 65 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 8 + (14)
					y: - 75 + (0)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 75 / 80 ) * minThickness * contrast
						angle: 40 + 'deg'
						distr: 0.25
					})
				2:
					x: spacingLeft + 5
					y: - 210
					dirIn: Utils.lineAngle( contours[0].nodes[2].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ) - ( 25 / 180 * Math.PI )
					type: 'smooth'
					expand: Object({
						width: ( 20 / 80 ) * thickness * contrast * contrastExtremity
						angle: 180 + 90 + 'deg'
						distr: 1
					})
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					typeOut: 'line'
				1:
					x: contours[1].nodes[0].x - ( 34 / 80 ) * minThickness
					y: contours[1].nodes[0].y + ( contours[1].nodes[5].y - contours[1].nodes[0].y ) * ( 18 / 91 )
					typeOut: 'line'
				2:
					x: contours[1].nodes[1].x - ( 3 / 80 ) * minThickness
					y: contours[1].nodes[1].y + ( 10 / 80 ) * minThickness
					typeOut: 'line'
				3:
					x: contours[1].nodes[5].x - ( 50 / 80 ) * minThickness
					y: contours[1].nodes[0].y + ( contours[1].nodes[5].y - contours[1].nodes[0].y ) * ( 78 / 91 )
					type: 'smooth'
				4:
					x: contours[1].nodes[0].x + ( contours[1].nodes[5].x - contours[1].nodes[0].x ) * ( 17 / 42 )
					y: contours[1].nodes[5].y + ( 9 / 80 ) * minThickness
					tensionOut: 1.2
					dirOut: 0 + 'deg'
					type: 'smooth'
				5:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					dirIn: Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[5].point ) - Math.PI / 2
					typeOut: 'line'
