exports.glyphs['a'] =
	unicode: 'a'
	glyphName: 'a'
	characterName: 'LATIN SMALL LETTER A'
	altImg: 'alt-spectral-a-0.svg'
	ot:
		advanceWidth: contours[0].nodes[5].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 10
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[1].expandedTo[0].x
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[2].x + 13
					y: Math.min(
						Math.max(
							xHeight - 117 - ( 150 * aperture * apertureTop - 150 ),
							contours[1].nodes[3].y + 0.25 * thickness + 10
						),
						xHeight - contours[0].nodes[1].expand.width
					)
					dirOut: contours[0].nodes[0].expand.angle + ( ( 90 - 4 ) / 180 * Math.PI )
					type: 'smooth'
					tensionOut: 0.95
					expand: Object({
						width: Math.min(
							( 83 / 80 ) * thickness * contrast * contrastExtremity,
							120
						)
						angle: Math.min(
							Math.max(
								4 + ( 50 * aperture * apertureTop - 50 ),
								- 90
							),
							0 + 20
						) / 180 * Math.PI
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * ( 177 / 321 )
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionIn: 0.95
					tensionOut: 1.1
					expand: Object({
						width: ( 53 / 80 ) * thickness * contrast
						angle: - 119 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + ( 100 + ( 20 / 80 ) * thickness ) + 200 * width - (17),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 83 / 80 ) * thickness + 10
					)
					y: xHeight - 100 - (5)
					dirIn: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 83 / 80 ) * thickness
						angle: - 165 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].expandedTo[1].x
					y: Math.max(
						contours[0].nodes[4].y + Math.sin( 49 / 180 * Math.PI ) * ( 79 / 80 ) * thickness + 24,
						contours[1].nodes[0].y
					)
					dirOut: - 90 + 'deg'
					expand: Object({
						width: ( 80 / 80 ) * thickness
						angle: 180 - 5 + 'deg'
						distr: 1
					})
				4:
					x: contours[0].nodes[3].expandedTo[1].x + ( contours[0].nodes[5].expandedTo[0].x - contours[0].nodes[3].expandedTo[1].x ) * 0.5
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						# width: ( 79 / 80 ) * thickness * contrast
						# angle: (180 + 49) / 180 * Math.PI
						width: contours[1].nodes[1].expand.width + ( 3 / 80 ) * thickness
						angle: Math.max(
							Math.PI + contours[1].nodes[1].expand.angle - 6 / 180 * Math.PI,
							Math.PI + Utils.lineAngle( contours[0].nodes[4].point, contours[0].nodes[5].point )
						)
						distr: 1
					})
				5:
					x: contours[0].nodes[2].x + Math.cos( (- 165 + 90) / 180 * Math.PI ) / ( 83 / 80 ) * thickness + 97
					y: Math.max(
						( 45 / 450 ) * xHeight,
						contours[0].nodes[4].y + Math.sin( 49 / 180 * Math.PI ) * ( 79 / 80 ) * thickness
					)
					dirIn: Math.min(
						- 122 / 180 * Math.PI,
						- Math.PI + Utils.lineAngle( contours[0].nodes[5], contours[0].nodes[4] ) + 30 / 180 * Math.PI
					)
					expand: Object({
						width: ( 6 / 80 ) * thickness * contrast
						angle: 180 + 120 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[2].expandedTo[1].x ) * ( 18 / 80 )
					y: Math.min(
						70,
						( 70 / 450 ) * xHeight
					) + (3)
					dirOut: Math.max(
						- 130 / 180 * Math.PI,
						- Math.PI + Utils.lineAngle( contours[1].nodes[1].point, contours[1].nodes[0].expandedTo[0].point ) + 30 / 180 * Math.PI
					)
					tensionOut: 1.1
					expand: Object({
						width: ( 26 / 80 ) * thickness * contrast * contrastExtremity
						angle: 90 + 'deg'
						distr: 0.1
					})
				1:
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[0].x - contours[1].nodes[2].expandedTo[0].x ) * ( 109 / 272 )
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						# width:
						# 	if contours[1].nodes[1].x + 15 < contours[1].nodes[2].expandedTo[1].x
						# 	then contours[1].nodes[2].expandedTo[1].x - contours[1].nodes[1].x + ( contours[1].nodes[2].expandedTo[1].x + contours[1].nodes[0].x ) * 0.5 - contours[1].nodes[2].expandedTo[1].x
						# 	else ( 75 / 80 ) * thickness * opticThickness * contrast
						width: ( 75 / 80 ) * thickness * opticThickness
						# angle: Math.max(
						# 	Math.atan2(
						# 		((( 75 / 80 ) * thickness * opticThickness * contrast) + overshoot),
						# 		(( contours[1].nodes[2].expandedTo[1].x + contours[1].nodes[0].x ) * 0.5 - contours[1].nodes[1].x)
						# 	),
						# 	Utils.lineAngle( contours[1].nodes[1].point, contours[1].nodes[0].point )
						# )
						angle: Math.max(
							Utils.lineAngle( contours[1].nodes[1].point, contours[1].nodes[3].expandedTo[1].point ) - ( 50 - 50 * contrast ) / 180 * Math.PI,
							Utils.lineAngle( contours[1].nodes[1].point, contours[1].nodes[0].expandedTo[1].point)
						)
						distr: 0
					})
				2:
					x: spacingLeft + (17)
					y: Math.min(
						Math.max(
							contours[1].nodes[1].y + ( contours[1].nodes[3].expandedTo[0].y - contours[1].nodes[1].y ) * ( 104 / 275 ) * width,
							contours[1].nodes[1].y + ( contours[1].nodes[3].expandedTo[0].y - contours[1].nodes[1].y ) * ( 104 / 275 )
						),
						( contours[1].nodes[1].y + Math.sin( contours[1].nodes[1].expand.angle ) * contours[1].nodes[1].expand.width ) + ( contours[1].nodes[3].expandedTo[1].y - ( contours[1].nodes[1].y + Math.sin( contours[1].nodes[1].expand.angle ) * contours[1].nodes[1].expand.width ) ) * 0.5
					)
					y: Math.max(
						contours[1].nodes[1].y + ( contours[1].nodes[3].expandedTo[0].y - contours[1].nodes[1].y ) * ( 104 / 275 ),
						contours[1].nodes[1].y + Math.sin( contours[1].nodes[1].expand.angle ) * contours[1].nodes[1].expand.width
					)
					y: contours[1].nodes[1].y + ( contours[1].nodes[3].expandedTo[0].y - contours[1].nodes[1].y ) * ( ( 94 + ( 10 / 80 ) * thickness ) / 275 )
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 80 / 80 ) * thickness
						angle: 14 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[2].expandedTo[1].x ) * ( 32 / 80 )
					y: ( 265 / 450 ) * xHeight * crossbar - (9)
					dirIn: Math.max(
						Utils.lineAngle( contours[1].nodes[3].point, contours[1].nodes[2].point ) - ( 20 / 180 * Math.PI ),
						- Math.PI
					)
					tensionIn: 1.1
					expand: Object({
						width: ( 36 / 80 ) * thickness * contrast * contrastExtremity
						angle: - 90 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					dirOut: contours[0].nodes[0].dirOut + Math.PI
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].expandedTo[0].y - ( 28 / 80 ) * thickness * contrast * contrastExtremity
					dirIn: contours[0].nodes[0].expand.angle
					typeOut: 'line'
				2:
					x: contours[0].nodes[0].expandedTo[1].x - 5
					y: Math.min(
						contours[2].nodes[1].y,
						contours[0].nodes[0].expandedTo[1].y
					)
					typeOut: 'line'
				3:
					x: contours[0].nodes[0].expandedTo[1].x
					y: Math.min(
						contours[2].nodes[2].y + 5,
						contours[0].nodes[0].expandedTo[1].y
					)
					typeOut: 'line'
				4:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
