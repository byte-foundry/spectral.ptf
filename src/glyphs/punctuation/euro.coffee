# TODO: aperture
exports.glyphs['euro'] =
	unicode: '€'
	glyphName: 'euro'
	characterName: 'EURO SIGN'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 10
		spacingRight: 50 * spacing + 21
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
					x: contours[0].nodes[2].expandedTo[0].x + 142 + Math.max( 50, ( 50 / 80 ) * thickness ) + 200 * width + (2)
					y: Math.max(
						76 + ( 150 * aperture * apertureBottom - 150 ),
						0
					)
					dirOut: Utils.lineAngle({x: contours[0].nodes[0].x, y: contours[0].nodes[0].y}, {x: contours[0].nodes[1].x, y: contours[0].nodes[1].y}) + (26 / 180 * Math.PI)
					expand:
						width: ( 25 / 80 ) * thickness * contrast * contrastExtremity
						angle: contours[0].nodes[0].dirOut - Math.PI / 2 - ( 48 / 180 * Math.PI )
						distr: 0.1
				1:
					x: ( contours[0].nodes[2].expandedTo[0].x + contours[0].nodes[0].x ) * ( 227 / 395 ) - (12)
					y: - overshoot
					dirOut: Math.PI
					type: 'smooth'
					tensionOut: 1.2
					expand:
						width: ( 80 / 80 ) * thickness * contrast
						angle: Math.acos( Math.min(
							Math.max(
								( ( ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * ( 174 / 295 ) ) - ( contours[0].nodes[1].x - contours[0].nodes[2].expandedTo[1].x ) ) / ( ( 80 / 80 ) * thickness * contrast ),
								Utils.lineAngle({x: contours[0].nodes[1].x, y: contours[0].nodes[1].y}, {x: contours[0].nodes[0].expandedTo[1].x, y: contours[0].nodes[0].expandedTo[1].y})
							),
							0.95
						))
						distr: 0
				2:
					x: contours[1].nodes[1].x + 74 + (24/80) * thickness
					y: ( 330 / 660 ) * capHeight
					dirOut: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 102 / 80 ) * thickness
						angle:( 20 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: ( contours[0].nodes[2].expandedTo[0].x + contours[0].nodes[4].x ) * ( 233 / 376 )
					y: capHeight + overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 47 / 80 ) * thickness * contrast
						angle:( - 105 ) / 180 * Math.PI
						angle: Math.PI + Math.acos( Math.min(
							Math.max(
								( ( ( contours[0].nodes[3].x - contours[0].nodes[2].expandedTo[1].x ) - ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * ( 124 / 206 ) ) ) / ( ( 47 / 80 ) * thickness * contrast ),
								Utils.lineAngle({x: contours[0].nodes[3].x, y: contours[0].nodes[3].y}, {x: contours[0].nodes[2].expandedTo[1].x, y: contours[0].nodes[2].expandedTo[1].y})
							),
							0.95
						))
						distr: 0
				4:
					x: contours[0].nodes[0].expandedTo[0].x - 19 - (4)
					y: capHeight - Math.max(
						48 + ( 150 * aperture * apertureBottom - 150 ),
						0
					) - (6)
					dirIn: Utils.lineAngle({x: contours[0].nodes[4].x, y: contours[0].nodes[4].y}, {x: contours[0].nodes[3].x, y: contours[0].nodes[3].y}) - (30 / 180 * Math.PI)
					expand:
						width: ( 83 / 80 ) * thickness
						angle: contours[0].nodes[4].dirIn + Math.PI / 2 - ( 12 / 180 * Math.PI )
						distr: 0.1
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: ( contours[1].nodes[1].x + contours[0].nodes[0].expandedTo[0].x ) * ( 345 / 469 )
					y: ( 387 / 660 ) * capHeight + (15)
					typeOut: 'line'
					expand:
						width: ( 44 / 80 ) * thickness * contrast
						angle: Math.PI / 2
						distr: 0.35
				1:
					x: spacingLeft
					y: contours[1].nodes[0].y
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 44 / 80 ) * thickness * contrast
						angle: Math.PI / 2
						distr: 0.35
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: ( 281 / 660 ) * capHeight - (15)
					typeOut: 'line'
					expand:
						width: ( 44 / 80 ) * thickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0.35
				1:
					x: contours[1].nodes[0].x
					y: contours[2].nodes[0].y
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 44 / 80 ) * thickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0.35
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					typeOut: 'line'
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
				2:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
		4:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[4].expandedTo[0].x
					y: contours[0].nodes[4].expandedTo[0].y
					dirOut: contours[0].nodes[4].dirIn
				1:
					x: contours[0].nodes[4].expandedTo[0].x + Math.min( 12, ( 12 / 80 ) * thickness )
					y: contours[4].nodes[2].y + ( contours[0].nodes[4].expandedTo[0].y - contours[4].nodes[2].y ) * ( 24 / 54 )
					dirOut:( - 90 ) / 180 * Math.PI
					type: 'smooth'
				2:
					x: contours[0].nodes[4].expandedTo[0].x + Math.min( 3, ( 3 / 80 ) * thickness )
					y: contours[4].nodes[4].y + ( contours[0].nodes[4].expandedTo[0].y - contours[4].nodes[4].y ) * ( 32 / 86 )
					dirIn: Utils.lineAngle({x: contours[4].nodes[3].x, y: contours[4].nodes[3].y}, {x: contours[4].nodes[2].x, y: contours[4].nodes[2].y})
					typeOut: 'line'
				3:
					x: contours[4].nodes[4].x + Math.min( 7, ( 7 / 80 ) * thickness )
					y: contours[4].nodes[4].y
					typeOut: 'line'
				4:
					x: contours[0].nodes[4].expandedTo[1].x + Math.min( 31, ( 31 / 80 ) * thickness ) # ( contours[0].nodes[4].expandedTo[1].y - contours[4].nodes[4].y ) / Math.tan( contours[0].nodes[4].dirIn )
					y: contours[0].nodes[4].expandedTo[1].y - Math.min( 45, ( 45 / 80 ) * thickness )
					typeOut: 'line'
				5:
					x: contours[0].nodes[4].expandedTo[1].x
					y: contours[0].nodes[4].expandedTo[1].y
					typeOut: 'line'
