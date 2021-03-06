exports.glyphs['h'] =
	unicode: 'h'
	glyphName: 'h'
	characterName: 'LATIN SMALL LETTER H'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50 + serifWidth
		spacingRight: 50 * spacing + 40 + serifWidth
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
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
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
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 170 + 200 * width - (20),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * thickness + 10
					)
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[1].nodes[0].expandedTo[1].x
					y: xHeight - Math.min(
						107,
						( 107 / 450 ) * xHeight
					)
					dirOut: 90 + 'deg'
					expand: Object({
						width: ( 92 / 80 ) * thickness
						angle: 180 - 150 + 'deg'
						distr: 1
					})
				2:
					x: contours[1].nodes[3].x + ( contours[1].nodes[0].expandedTo[1].x - contours[1].nodes[3].x ) * 0.54
					y: xHeight + overshoot
					dirOut: 180 + 'deg'
					tensionOut: 1.25
					type: 'smooth'
					expand: Object({
						width: ( 83 / 80 ) * thickness * contrast
						angle: 180 - 122 + 'deg'
						distr: 1
					})
				3:
					x: contours[0].nodes[0].expandedTo[1].x - ( 8 / 80 ) * thickness
					y: xHeight - 60 - (20)
					dirIn: Math.max(
						90 - ( 8 + 35 * width ),
						47
					) + 'deg'
					expand: Object({
						width: ( 30 / 80 ) * thickness * contrast * contrastExtremity
						angle: 180 - 90 + 'deg'
						distr: 0.9
					})
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
		1:
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
		2:
			base: ['serif-vertical', 'none']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0].point
					noneAnchor: contours[1].nodes[0].expandedTo[0].point
					opposite: contours[1].nodes[0].expandedTo[1].point
			parentParameters:
				serifWidth: Math.min( ( 70 / 65 ) * serifWidth, serifWidth + 5 )
		3:
			base: ['serif-vertical', 'none']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1].point
					noneAnchor: contours[1].nodes[0].expandedTo[1].point
					opposite: contours[1].nodes[0].expandedTo[0].point
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		4:
			base: ['spur-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0].point
					noneAnchor: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					reversed: true
					rotate: -15 * spurHeight
			transformOrigin: contours[0].nodes[1].expandedTo[0].point
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'translateY', - ( Math.sin( (15 * spurHeight) / 180 * Math.PI ) * ( thickness ) ) ]
			)
			parentParameters:
				serifHeight: Math.min( ( 85 / 50 ) * serifHeight, serifHeight + 35 )
				serifMedian: Math.max( ( 0.20 ) * serifMedian, serifMedian - 0.8 )
		# 5:
		# 	base: ['inktrap', 'none']
		# 	id: 'inktrap2'
		# 	parentAnchors:
		# 		0:
		# 			x: contours[1].nodes[3].x
		# 			y: contours[1].nodes[3].y
		# 			noneAnchor: contours[1].nodes[3].point
		# 	transformOrigin: contours[1].nodes[3].point
		# 	transforms: Array(
		# 		[ 'scale', inktrap ]
		# 	)
