exports.glyphs['braceright'] =
	unicode: '}'
	glyphName: 'braceright'
	characterName: 'RIGHT CURLY BRACKET'
	ot:
		advanceWidth: contours[0].nodes[5].x + spacingRight
	transforms: Array(
		['scaleX', -1],
		['translateX', contours[0].nodes[5].x + spacingRight]
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 5
		spacingRight: 50 * spacing + 15
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
					x: spacingLeft
					y: ( contours[0].nodes[5].y + contours[1].nodes[5].y ) / 2
					typeOut: 'line'
					expand:
						width: ( 23 / 80 ) * thickness * contrast
						angle: ( 90 / 180 ) * Math.PI
						distr: 0.5
				1:
					x: contours[0].nodes[0].x + Math.min( 25, 25 * width )
					y: contours[0].nodes[0].y
					dirOut: 0
					typeIn: 'line'
					expand:
						width: ( 23 / 80 ) * thickness * contrast
						angle: ( 90 / 180 ) * Math.PI
						distr: 0.5
				2:
					x: contours[0].nodes[1].x + ( contours[0].nodes[5].x - contours[0].nodes[1].x ) * ( 110 / 215 ) - (5)
					y: contours[0].nodes[1].expandedTo[1].y + ( contours[0].nodes[5].expandedTo[1].y - contours[0].nodes[1].expandedTo[1].y ) * ( 100 / 410 )
					dirOut: ( 90 / 180 ) * Math.PI
					type: 'smooth'
					expand:
						width: ( 63 / 80 ) * thickness
						angle: Math.PI + ( 19 / 180 ) * Math.PI
						distr: 0.75
				3:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[1].expandedTo[1].y + ( contours[0].nodes[5].expandedTo[1].y - contours[0].nodes[1].expandedTo[1].y ) * ( 318 / 410 ) - (10)
					dirOut: ( 90 / 180 ) * Math.PI
					type: 'smooth'
					expand:
						width: ( 75 / 80 ) * thickness
						angle: ( 205 / 180 ) * Math.PI
						distr: 0
				4:
					x: contours[0].nodes[5].x - 19
					y: contours[0].nodes[5].y
					type: 'smooth'
					typeOut: 'line'
					expand:
						width: ( 23 / 80 ) * thickness * contrast
						angle: Math.PI + ( - 107 / 180 ) * Math.PI
						distr: 1
				5:
					x: contours[0].nodes[0].x + 140 + 100 * width
					y: ascenderHeight
					typeIn: 'line'
					expand:
						width: ( 23 / 80 ) * thickness * contrast
						angle: Math.PI + ( - 90 / 180 ) * Math.PI
						distr: 1
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y
					typeOut: 'line'
					expand:
						width: ( 23 / 80 ) * thickness * contrast
						angle: ( 90 / 180 ) * Math.PI
						distr: 0.5
				1:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					dirOut: 0
					typeIn: 'line'
					expand:
						width: ( 23 / 80 ) * thickness * contrast
						angle: ( 90 / 180 ) * Math.PI
						distr: 0.5
				2:
					x: contours[0].nodes[2].x
					y: contours[1].nodes[1].expandedTo[1].y - ( contours[1].nodes[1].expandedTo[1].y - contours[1].nodes[5].expandedTo[1].y ) * ( 96 / 410 ) - (29)
					dirOut: ( 90 / 180 ) * Math.PI
					type: 'smooth'
					expand:
						width: ( 63 / 80 ) * thickness
						angle: ( - 19 / 180 ) * Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[3].x
					y: contours[1].nodes[1].expandedTo[1].y - ( contours[1].nodes[1].expandedTo[1].y - contours[1].nodes[5].expandedTo[1].y ) * ( 303 / 410 ) - (29)
					dirOut: ( 90 / 180 ) * Math.PI
					type: 'smooth'
					expand:
						width: ( 75 / 80 ) * thickness
						angle: Math.PI + ( 155 / 180 ) * Math.PI
						distr: 1
				4:
					x: contours[0].nodes[4].x
					y: contours[1].nodes[5].y
					type: 'smooth'
					typeOut: 'line'
					expand:
						width: ( 23 / 80 ) * thickness * contrast
						angle: Math.PI + ( - 70 / 180 ) * Math.PI
						distr: 0
				5:
					x: contours[0].nodes[5].x
					y: ( 150 / 240 ) * descender
					typeIn: 'line'
					expand:
						width: ( 23 / 80 ) * thickness * contrast
						angle: Math.PI + ( - 90 / 180 ) * Math.PI
						distr: 0
