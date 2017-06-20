# TODO: different top spur?
exports.glyphs['q'] =
	unicode: 'q'
	glyphName: 'q'
	characterName: 'LATIN SMALL LETTER Q'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 40 + serifWidth
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: 0
			y: 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: ( 230 / 250 ) * descender
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 1
					})
				1:
					x: Math.max(
						contours[1].nodes[2].expandedTo[0].x + 128 + 200 * width + 20,
						contours[1].nodes[2].expandedTo[1].x + 0.25 * thickness + 10
					)
					y: contours[0].nodes[2].y - ( 35 / 80 ) * thickness
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].expandedTo[1].x
					y: xHeight + overshoot
					expand: Object({
						width: ( 6 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x + ( 10 / 80 ) * thickness
					y: Math.min( 65, ( 65 / 450 ) * xHeight )
					dirOut: - 140 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 35 / 80 ) * thickness * contrast * contrastExtremity
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[0].x - contours[1].nodes[2].expandedTo[0].x ) * ( 175 / 340 )
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 88 / 80 ) * thickness * contrast
						angle: 50 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + (20/80) * thickness
					y: contours[1].nodes[1].y + ( contours[1].nodes[3].y - contours[1].nodes[1].y ) * ( 204 / 470 ) + (6)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 83 / 80 ) * thickness
						angle: 18 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[1].nodes[4].expandedTo[0].x - contours[1].nodes[2].expandedTo[0].x ) * ( 240 / 390 )
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 50 / 80 ) * thickness * contrast
						angle: - 105 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[1].expandedTo[0].x + ( 60 / 80 ) * thickness
					y: xHeight - ( 20 / 450 ) * xHeight
					dirIn: 140 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 87 / 80 ) * thickness * contrast * contrastExtremity
						angle: Math.min(
							- 120 + ( ( 20 / 80 ) * thickness - 20 ),
							- 90
						) + 'deg'
						distr: 0
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
			parentParameters:
				serifWidth: Math.min( ( 70 / 65 ) * serifWidth, serifWidth + 5 )
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
