# TODO: inktraps
exports.glyphs['b'] =
	unicode: 'b'
	glyphName: 'b'
	characterName: 'LATIN SMALL LETTER B'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + ( 60 / 65 ) * serifWidth
		spacingRight: 50 * spacing + 50
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x
					y: - overshoot
					typeOut: 'line'
					expand: Object({
						width: ( 6 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					x: spacingLeft + (20/80) * thickness
					y: ( 65 / 80 ) * thickness
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].x
					y: ascenderHeight - Math.max( 0, serifHeight * serifArc ) - ( Math.sin( (15 * spurHeight) / 180 * Math.PI ) * ( thickness ) )
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: Math.min(
						xHeight - 95 - (2) - ( 50 * aperture * apertureTop - 50 ),
						xHeight
					)
					dirOut: Math.max(
						contours[1].nodes[0].expand.angle + Math.PI / 2,
						Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ) + 30 / 180 * Math.PI
					)
					expand: Object({
						width: ( 32 / 80 ) * thickness * contrast * contrastExtremity
						angle: Math.min(
							- 45 + ( 50 * aperture * apertureTop - 50 ),
							0
						) / 180 * Math.PI
						distr: 1
					})
				1:
					x: contours[1].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[0].expandedTo[0].x ) * 0.5
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 88 / 80 ) * thickness * contrast
						angle: - 130 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 207 + 200 * width - (16),
						contours[0].nodes[1].expandedTo[1].x + 0.75 * ( 83 / 80 ) * thickness + 10
					)
					y: ( 247 / 450 ) * xHeight + (0)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 83 / 80 ) * thickness
						angle: - 165 + 'deg'
						distr: 0.25
					})
				3:
					x: Math.max(
						contours[1].nodes[4].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[4].expandedTo[0].x ) * ( 160 / 390 ),
						contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * ( 175 / 410 )
					)
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 55 / 80 ) * thickness * contrast
						angle: 61 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[1].expandedTo[1].x
					y: Math.max(
						contours[0].nodes[1].expandedTo[1].y + ( 15 / 80 ) * thickness,
						80
					)
					dirIn: - Math.min(
						90,
						Math.max(
							42,
							( ( 90 - ( 13 + 35 * width) ) / 80 ) * thickness
						)
					) + 'deg'
					# dirIn: - Math.min(
					# 	contours[1].nodes[0].expand.angle + Math.PI / 2,
					# 	Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ) + 30 / 180 * Math.PI
					# )
					expand: Object({
						width: thickness * contrast * contrastExtremity
						angle: Math.PI / 2 - Utils.lineAngle( contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point )
						distr: 1
					})
	components:
		0:
			base: ['spur-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[2].expandedTo[0].point
					noneAnchor: contours[0].nodes[2].expandedTo[0].point
					opposite: contours[0].nodes[2].expandedTo[1].point
					reversed: true
					rotate: -15 * spurHeight
			transformOrigin: contours[0].nodes[2].expandedTo[0].point
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'translateY', - ( Math.sin( (15 * spurHeight) / 180 * Math.PI ) * ( thickness ) ) ]
			)
			parentParameters:
				serifHeight: Math.min( ( 85 / 50 ) * serifHeight, serifHeight + 35 )
				serifMedian: Math.max( ( 0.20 ) * serifMedian, serifMedian - 0.8 )
		# 1:
		# 	base: ['inktrap', 'none']
		# 	id: 'inktrap'
		# 	parentAnchors:
		# 		0:
		# 			x: contours[1].nodes[0].x
		# 			y: contours[1].nodes[0].y
		# 			noneAnchor: contours[1].nodes[0].point
		# 	transformOrigin: contours[1].nodes[0].point
		# 	transforms: Array(
		# 		[ 'scale', inktrap ]
		# 	)
