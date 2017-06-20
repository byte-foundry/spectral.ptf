# TODO: spur
exports.glyphs['p'] =
	unicode: 'p'
	glyphName: 'p'
	characterName: 'LATIN SMALL LETTER P'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50 + serifWidth
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
					x: spacingLeft + (20/80) * thickness
					y: ( 230 / 250 ) * descender + Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 80 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: Math.max(
						contours[1].nodes[0].expandedTo[0].y,
						xHeight + overshoot - serifHeight
					)
					y: contours[1].nodes[0].expandedTo[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 80 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[0].expandedTo[0].x
					y: xHeight + overshoot - ( Math.sin( (15 * spurHeight) / 180 * Math.PI ) * ( thickness ) )
					# y: Math.max(
					# 	xHeight + overshoot - ( Math.sin( (15 * spurHeight) / 180 * Math.PI ) * ( thickness ) ),
					# 	xHeight + overshoot - serifHeight
					# )
					expand: Object({
						width: ( 20 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			inverseOrder: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x - ( 10 / 80 ) * thickness
					y: xHeight - 65 - (2)
					dirOut: Math.max(
						90 - ( 12 + 35 * width ),
						43
					) + 'deg'
					expand: Object({
						width: ( 32 / 80 ) * thickness * contrast * contrastExtremity
						angle: - 90 + 'deg'
						distr: 0.1
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
						contours[0].nodes[0].expandedTo[0].x + 208 + 200 * width - (20),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 86 / 80 ) * thickness + 10
					)
					y: ( 247 / 450 ) * xHeight - (6)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 86 / 80 ) * thickness
						angle: - 155 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[1].nodes[4].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[4].expandedTo[0].x ) * ( 160 / 390 )
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * ( 175 / 410 )
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
					y: contours[1].nodes[3].y + Math.sin( 61 / 180 * Math.PI ) * ( 55 / 80 ) * thickness * contrast + 42 / 1
					dirIn: - 40 + 'deg'
					expand: Object({
						width: thickness * contrast * contrastExtremity
						angle: 180 - 120 + 'deg'
						distr: 1
					})
	components:
		0:
			base: ['spur-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0].point
					noneAnchor: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					reversed: true
					rotate: -15 * spurHeight
					aperture: true
			transformOrigin: contours[0].nodes[1].expandedTo[0].point
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'translateY', - ( xHeight - contours[1].nodes[0].expandedTo[0].y ) - overshoot ]
			)
			parentParameters:
				serifHeight: Math.min( ( 85 / 50 ) * serifHeight, serifHeight + 35 )
				serifMedian: Math.max( ( 0.20 ) * serifMedian, serifMedian - 0.8 )
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
		2:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
			parentParameters:
				serifWidth: Math.min( ( 70 / 65 ) * serifWidth, serifWidth + 5 )
	# 	1:
	# 		base: ['inktrap', 'none']
	# 		id: 'inktrap'
	# 		parentAnchors:
	# 			0:
	# 				x: contours[1].nodes[0].x
	# 				y: contours[1].nodes[0].y
	# 				noneAnchor: contours[1].nodes[0].point
	# 		transformOrigin: contours[1].nodes[0].point
	# 		transforms: Array(
	# 			[ 'scale', inktrap ]
	# 		)
