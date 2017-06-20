# Todo: contrast
exports.glyphs['r'] =
	unicode: 'r'
	glyphName: 'r'
	characterName: 'LATIN SMALL LETTER R'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50 + serifWidth
		spacingRight: 50 * spacing # + 40 + serifWidth
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: xHeight + diacriticHeight
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
					y: contours[1].nodes[3].expandedTo[1].y + (20)
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
					x: contours[1].nodes[1].expandedTo[0].x + 38
					y: Math.min(
						contours[1].nodes[1].expandedTo[0].y - Math.tan( ( Math.PI - contours[1].nodes[1].dirOut ) ) * 38,
						contours[1].nodes[1].expandedTo[1].y - ( 95 / 80 ) * thickness
					)
					# typeOut: 'line'
					dirOut: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].expandedTo[0].point )
					expand: Object({
						width: ( 74 / 80 ) * thickness
						angle: 180 - 116 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 132 * width + ( 20 / 80 ) * thickness
					y: xHeight
					dirOut: Math.max(
						157 / 180 * Math.PI,
						Utils.lineAngle( contours[1].nodes[1].point, contours[1].nodes[2].point ) - 30 / 180 * Math.PI
					)
					tensionOut: 1 * contrast
					expand: Object({
						width: ( 90 / 80 ) * thickness
						angle: 180 - 116 + 'deg'
						distr: 1
					})
				2:
					x: contours[1].nodes[3].x + ( contours[1].nodes[1].x - contours[1].nodes[3].x ) * ( 124 / 184 )
					y: xHeight + overshoot
					dirOut: 180 + 'deg'
					tensionOut: 1.25
					type: 'smooth'
					expand: Object({
						width: ( 93 / 80 ) * thickness * contrast
						angle: 180 - 122 + 'deg'
						distr: 1
					})
				3:
					x: contours[0].nodes[0].expandedTo[1].x - ( 8 / 80 ) * thickness
					y: xHeight - 94 - (3)
					dirIn: Utils.lineAngle( contours[1].nodes[3].expandedTo[1].point, contours[1].nodes[2].expandedTo[1].point ) + ( 12 / 180 * Math.PI )
					expand: Object({
						width: ( 34 / 80 ) * thickness * contrast * contrastExtremity
						angle: 180 - 90 + 'deg'
						distr: 0.9
					})
		2:
			skeleton: false
			closed: true
			exportReversed: true
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
					typeIn: 'line'
					dirOut: Utils.lineAngle( contours[1].nodes[2].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point )
				1:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					dirIn: 90 + 'deg'
					type: 'smooth'
				2:
					x: contours[1].nodes[0].expandedTo[0].x + 7
					y: contours[1].nodes[0].expandedTo[0].y
					dirIn: Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[0].expandedTo[1].point )
				3:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
					typeIn: 'line'
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
				[ 'translateY', - ( (xHeight + overshoot) - contours[0].nodes[1].y ) ]
			)
			parentParameters:
				serifHeight: Math.min( ( 85 / 50 ) * serifHeight, serifHeight + 35 )
				serifMedian: Math.max( ( 0.20 ) * serifMedian, serifMedian - 0.8 )
		# 3:
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
