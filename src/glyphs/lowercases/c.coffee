# TODO: contours[2] <-> thickness
exports.glyphs['c'] =
	unicode: 'c'
	glyphName: 'c'
	characterName: 'LATIN SMALL LETTER C'
	ot:
		advanceWidth: contours[0].nodes[5].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 45
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
						Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point ) + ( 30 / 180 * Math.PI ),
					)
					expand: Object({
						width: ( 10 / 80 ) * thickness * contrast * contrastExtremity
						angle: Math.min(
							108 + ( 50 * aperture * apertureBottom - 50 ),
							180 + 20
						) / 180 * Math.PI
						distr: 0.1
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.55
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 86 / 80 ) * thickness * contrast
						angle: 60 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + (20/80) * thickness
					y: ( 205 / 450 ) * xHeight + (11)
					dirIn: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 91 / 80 ) * thickness
						angle: 30 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[5].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 230 / 380 ) # 0.55
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 54 / 80 ) * thickness * contrast
						angle: Utils.lineAngle( contours[0].nodes[3].point, contours[0].nodes[2].expandedTo[1].point ) # + 12 / 180 * Math.PI
					distr: 0
					})
				4:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[5].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 335 / 380 ) + (23)
					y: xHeight - 40 - (3)
					dirIn: Utils.lineAngle( contours[0].nodes[4].expandedTo[1].point, contours[0].nodes[5].expandedTo[1].point )
					typeOut: 'line'
					expand: Object({
						width: ( ( 36 + 50 * contrast ) / 80 ) * thickness
						angle: - 150 + 'deg'
						distr: 0.1
					})
				5:
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 180 + 200 * width + (2),
						contours[0].nodes[2].expandedTo[1].x + ( 72 / 80 ) * thickness + 10
					)
					y: xHeight - 65 - (4)
					dirIn: 90 + 'deg'
					expand: Object({
						width: ( ( 41 + 40 * contrast ) / 80 ) * thickness
						angle: - 137 + 'deg'
						distr: 0
					})
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirIn: 0 + 'deg'
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
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[4].expandedTo[0].x
					y: contours[0].nodes[4].expandedTo[0].y
					dirOut: Utils.lineAngle( contours[0].nodes[4].expandedTo[1].point, contours[0].nodes[5].expandedTo[1].point )
				1:
					x: contours[0].nodes[5].expandedTo[0].x
					y: contours[0].nodes[5].expandedTo[0].y
					dirIn: 90 + 'deg'
					dirOut: - 90 + 'deg'
					type: 'smooth'
				2:
					x: Math.min(
						contours[0].nodes[4].expandedTo[0].x + ( contours[0].nodes[5].expandedTo[0].x - contours[0].nodes[4].expandedTo[0].x ) * ( 3 / 16 ),
						contours[0].nodes[4].expandedTo[0].x
					)
					y: Math.min(
						contours[0].nodes[5].expandedTo[1].y + ( contours[0].nodes[4].expandedTo[1].y - contours[0].nodes[5].expandedTo[1].y ) * ( 32 / 46 ),
						contours[0].nodes[4].expandedTo[1].y
					)
					dirIn: contours[0].nodes[5].expand.angle
					typeOut: 'line'
				3:
					x: contours[0].nodes[5].expandedTo[1].x + Math.min( 7, ( 7 / 80 ) * thickness )
					y: contours[0].nodes[5].expandedTo[1].y
					typeOut: 'line'
				4:
					x: contours[0].nodes[5].expandedTo[1].x
					y: contours[0].nodes[5].expandedTo[1].y
					typeOut: 'line'
