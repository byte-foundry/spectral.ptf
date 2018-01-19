# TODO: contours[2] <-> thickness
exports.glyphs['e'] =
	unicode: 'e'
	glyphName: 'e'
	characterName: 'LATIN SMALL LETTER E'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 50
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 200 * width + 185 - (2),
						contours[0].nodes[2].expandedTo[1].x + ( 72 / 80 ) * thickness + 10
					)
					y: Math.max(
						Math.min(
							95 + ( 150 * aperture * apertureBottom - 150 ) + (1),
							xHeight / 2
						),
						contours[0].nodes[1].y + Math.sin( 60 / 180 * Math.PI ) * ( 86 / 80 ) * thickness + 30 * aperture * apertureBottom
					)
					dirOut: Math.max(
						Math.min(
							contours[0].nodes[0].expand.angle - Math.PI / 4,
							0
						),
						Utils.lineAngle({x: contours[0].nodes[1].expandedTo[0].x, y: contours[0].nodes[1].expandedTo[0].y}, {x: contours[0].nodes[0].expandedTo[0].x, y: contours[0].nodes[0].expandedTo[0].y}) + (30 / 180 * Math.PI),
					)
					expand:
						width: ( 10 / 80 ) * thickness * contrast * contrastExtremity
						angle: Math.min(
							108 + ( 50 * aperture * apertureBottom - 50 ),
							180 + 20
						) / 180 * Math.PI
						distr: 0.1
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.55
					y: - overshoot
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 86 / 80 ) * thickness * contrast
						angle:( 60 ) / 180 * Math.PI
						distr: 0
				2:
					x: spacingLeft + (20/80) * thickness
					y: ( 205 / 450 ) * xHeight + (11)
					dirIn:( - 90 ) / 180 * Math.PI
					type: 'smooth'
					expand:
						width: ( 91 / 80 ) * thickness
						angle:( 30 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.55
					y: xHeight + overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 47 / 80 ) * thickness * contrast
						# angle: Math.max(
						# 	- Math.PI / 2 - Math.asin( (contours[0].nodes[3].x - ( contours[0].nodes[2].expandedTo[1].x + contours[0].nodes[4].expandedTo[1].x ) / 2) / ( ( 47 / 80 ) * thickness * contrast) ),
						# 	Utils.lineAngle({x: contours[0].nodes[3].x, y: contours[0].nodes[3].y}, {x: contours[0].nodes[2].expandedTo[1].x, y: contours[0].nodes[2].expandedTo[1].y}) + 10 / 180 * Math.PI
						# )
						angle: Utils.lineAngle({x: contours[0].nodes[3].x, y: contours[0].nodes[3].y}, {x: contours[0].nodes[2].expandedTo[1].x, y: contours[0].nodes[2].expandedTo[1].y}) + 12 / 180 * Math.PI
						distr: 0
				4:
					x: contours[0].nodes[0].expandedTo[0].x
					y: ( 247 / 450 ) * xHeight * crossbar
					dirIn: Math.PI / 2
					expand:
						width: ( 72 / 80 ) * thickness
						angle: Math.PI
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					# x: contours[0].nodes[4].expandedTo[0].x - ( 5 / 80 ) * thickness
					x: ( contours[0].nodes[4].expandedTo[0].x + contours[0].nodes[4].expandedTo[1].x ) / 2
					y: contours[0].nodes[4].expandedTo[0].y
					typeOut: 'line'
					expand:
						width: Math.min(
							( 46 / 80 ) * thickness * contrast,
							contours[0].nodes[3].expandedTo[1].y - ( contours[1].nodes[0].y - 0.9 * ( 46 / 80 ) * thickness * contrast ) - thickness
						)
						angle: Math.PI / 2
						distr: 0.1
				1:
					x: contours[0].nodes[3].x
					y: contours[1].nodes[0].y
					typeOut: 'line'
					expand:
						width: contours[1].nodes[0].expand.width
						angle: Math.PI / 2
						distr: 0.1
		4:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[3].x
					y: contours[0].nodes[4].expandedTo[0].y
					typeOut: 'line'
					expand:
						width: Math.min(
							( 46 / 80 ) * thickness * contrast,
							contours[0].nodes[3].expandedTo[1].y - ( contours[1].nodes[0].y - 0.9 * ( 46 / 80 ) * thickness * contrast ) - thickness
						)
						angle: Math.PI / 2
						distr: 0.1
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[1].x - contours[0].nodes[2].expandedTo[0].x ) * 0.9
					y: contours[1].nodes[0].y
					typeOut: 'line'
					expand:
						width: contours[1].nodes[0].expand.width * contrastExtremity
						angle: Math.PI / 2
						distr: 0.1
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirIn: 0
				1:
					x: Math.min(
						contours[0].nodes[0].expandedTo[1].x,
						contours[0].nodes[0].expandedTo[0].x - 4
					)
					y: contours[0].nodes[0].expandedTo[1].y
					dirIn: Math.min(
						contours[0].nodes[0].dirOut - ( 30 * contrast - Math.max( 30 * aperture * apertureBottom - ( 30 / 80 ) * thickness, 0 ) ) / 180 * Math.PI,
						contours[0].nodes[0].dirOut
					)
					typeOut: 'line'
				2:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
				3:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					dirOut: contours[0].nodes[0].dirOut
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
					typeOut: 'line'
				1:
					x: contours[0].nodes[4].expandedTo[0].x
					y: contours[0].nodes[4].expandedTo[0].y
					typeOut: 'line'
				2:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[0].nodes[4].expandedTo[0].y
					typeOut: 'line'
