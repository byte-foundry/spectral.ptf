exports.glyphs['quoteright'] =
	unicode: '’'
	glyphName: 'quoteright'
	characterName: 'RIGHT SINGLE QUOTATION MARK'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 52
		spacingRight: 50 * spacing + 52
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
					x: spacingLeft + 75
					y: ascenderHeight
					dirOut: 160 + 'deg'
					expand:
						width: ( 100 / 80 ) * minThickness
						angle: 70 + 'deg'
						distr: 1
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 16 + (12)
					y: contours[0].nodes[2].expandedTo[0].y + ( contours[0].nodes[0].expandedTo[0].y - contours[0].nodes[2].expandedTo[0].y ) * ( 80 / 147 ) - (4)
					dirOut: - 90 + 'deg'
					typeIn: 'smooth'
					expand:
						width: ( 75 / 80 ) * minThickness * contrast
						angle: 37 + 'deg'
						distr: 0.25
				2:
					x: contours[0].nodes[0].expandedTo[0].x - 37
					y: contours[0].nodes[0].y - 160 - Math.min( ( 100 / 80 ) * thickness, 100 )
					dirIn: Utils.lineAngle({x: contours[0].nodes[2].expandedTo[0].x, y: contours[0].nodes[2].expandedTo[0].y}, {x: contours[0].nodes[1].expandedTo[0].x, y: contours[0].nodes[1].expandedTo[0].y}) - (25 / 180 * Math.PI)
					expand:
						width: ( 20 / 80 ) * thickness * contrast * contrastExtremity
						angle: 180 + 90 + 'deg'
						distr: 1
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					typeOut: 'line'
					typeIn: 'line'
				1:
					x: contours[1].nodes[0].x - ( 37 / 80 ) * minThickness
					y: contours[1].nodes[0].y + ( contours[1].nodes[5].y - contours[1].nodes[0].y ) * ( 19 / 93 )
					typeOut: 'line'
					typeIn: 'line'
				2:
					x: contours[1].nodes[1].x
					y: contours[1].nodes[1].y + ( 12 / 80 ) * minThickness
					typeOut: 'line'
					typeIn: 'line'
				3:
					x: contours[1].nodes[5].x - ( 53 / 80 ) * minThickness
					y: contours[1].nodes[0].y + ( contours[1].nodes[5].y - contours[1].nodes[0].y ) * ( 78 / 93 )
					typeIn: 'line'
					type: 'smooth'
				4:
					x: contours[1].nodes[0].x + ( contours[1].nodes[5].x - contours[1].nodes[0].x ) * ( 7 / 35 )
					y: contours[1].nodes[5].y + ( 7 / 80 ) * minThickness
					tensionOut: 1.2
					dirOut: 0 + 'deg'
					typeIn: 'smooth'
				5:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					dirIn: Utils.lineAngle({x: contours[1].nodes[0].x, y: contours[1].nodes[0].y}, {x: contours[1].nodes[5].x, y: contours[1].nodes[5].y}) - Math.PI / 2
					typeOut: 'line'
