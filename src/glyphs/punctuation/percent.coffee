exports.glyphs['percent'] =
	unicode: '%'
	glyphName: 'percent'
	characterName: 'PERCENT SIGN'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', ( slant ) / 180 * Math.PI]
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 30
		spacingRight: 50 * spacing + 12
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[2].nodes[1].x
					y: 0
					typeOut: 'line'
					expand:
						width: ( 42 / 80 ) * thickness * contrast
						angle: Utils.lineAngle(
						        { x: contours[0].nodes[0].x, y: contours[0].nodes[0].y },
						        { x: contours[0].nodes[1].x, y: contours[0].nodes[1].y }
						    ) + Math.PI / 2
						distr: 0.5
				1:
					x: contours[0].nodes[0].x + 365 + 100 * width
					y: ascenderHeight
					typeIn: 'line'
					expand:
						width: ( 42 / 80 ) * thickness * contrast
						angle: Utils.lineAngle(
						        { x: contours[0].nodes[0].x, y: contours[0].nodes[0].y },
						        { x: contours[0].nodes[1].x, y: contours[0].nodes[1].y }
						    ) + Math.PI / 2
						distr: 0.5
		1:
			skeleton: true
			closed: true
			nodes:
				0:
					x: contours[1].nodes[1].x - 93 - 50 * width + (6)
					y: ( contours[1].nodes[1].y - contours[1].nodes[3].y ) / 2 - (6)
					dirOut: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 80 / 80 ) * thickness
						angle: ( 11 / 180 ) * Math.PI
						distr: 0.25
				1:
					x: contours[0].nodes[1].expandedTo[1].x
					y: ( 385 / 750 ) * ascenderHeight + overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 26 / 80 ) * thickness * contrast
						angle: ( - 115 / 180 ) * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[1].nodes[1].x + 93 + 50 * width - (2),
						contours[1].nodes[0].expandedTo[1].x + 0.75 * ( 80 / 80 ) * thickness + 10
					)
					y: contours[1].nodes[0].y
					dirIn: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 80 / 80 ) * thickness
						angle: ( - 160 / 180 ) * Math.PI
						distr: 0.25
				3:
					x: contours[1].nodes[1].expandedTo[0].x
					y: - overshoot
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 27 / 80 ) * thickness * contrast
						angle: ( 75 / 180 ) * Math.PI
						distr: 0
		2:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft + (20/80) * thickness
					y: ascenderHeight + overshoot - ( contours[2].nodes[1].y - contours[2].nodes[3].y ) / 2
					dirOut: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 80 / 80 ) * thickness
						angle: ( 11 / 180 ) * Math.PI
						distr: 0.25
				1:
					x: contours[2].nodes[0].expandedTo[0].x + ( contours[2].nodes[2].expandedTo[0].x - contours[2].nodes[0].expandedTo[0].x ) * ( 143 / 285 )
					y: ascenderHeight + overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 26 / 80 ) * thickness * contrast
						angle: ( - 115 / 180 ) * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[2].nodes[0].expandedTo[0].x + 185 + 100 * width - (2),
						contours[2].nodes[0].expandedTo[1].x + 0.75 * ( 80 / 80 ) * thickness + 10
					)
					y: contours[2].nodes[0].y
					dirIn: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 80 / 80 ) * thickness
						angle: ( - 160 / 180 ) * Math.PI
						distr: 0.25
				3:
					x: contours[2].nodes[1].expandedTo[0].x
					y: ascenderHeight - ( 385 / 750 ) * ascenderHeight - overshoot
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 27 / 80 ) * thickness * contrast
						angle: ( 75 / 180 ) * Math.PI
						distr: 0
