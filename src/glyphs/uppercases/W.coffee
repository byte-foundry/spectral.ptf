# TODO: width and oblics — see x.coffee
# TODO: thickness, contrast, width…
exports.glyphs['W'] =
	unicode: 'W'
	glyphName: 'W'
	characterName: 'LATIN CAPITAL LETTER W'
	ot:
		advanceWidth: contours[4].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 15 + ( 55 / 65 ) * serifWidth
		spacingRight: 50 * spacing + 15 + ( 55 / 65 ) * serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (22/80) * thickness * opticThickness
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: Math.max(
							( 93 / 80 ) * thickness * opticThickness,
							thickness * opticThickness / ( - Math.sin( Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) ) )
						)
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					expand: Object({
						width: thickness * opticThickness + Math.min( 60, ( 60 / 80 ) * thickness * opticThickness )
						angle: Utils.lineAngle( contours[1].nodes[0].point, contours[0].nodes[1].point ) + Math.PI - (1 / 180*Math.PI)
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x + ( contours[4].nodes[0].x - contours[0].nodes[0].x ) * 0.5 - (( 37 / 80 ) * thickness) / 2
					y: capHeight - ( 20 / 660 ) * capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 65 / 80 ) * thickness * opticThickness * contrast
						angle: 180 + 160 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x + ( contours[1].nodes[0].x - contours[0].nodes[0].x ) * ( 265 / 465 )
					y: ( 15 / 660 ) * capHeight
					expand: Object({
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: Utils.lineAngle( contours[4].nodes[0].point, contours[4].nodes[1].point ) + Math.PI / 2
						distr: 1
					})
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
					typeOut: 'line'
				1:
					x: Math.min(
						Utils.onLine({
							y: - overshoot / 2
							on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
						}),
						contours[1].nodes[1].expandedTo[1].x
					)
					y: - overshoot / 2
					typeOut: 'line'
				2:
					x: Utils.onLine({
						y: - overshoot / 2
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					x: Math.min(
						Utils.onLine({
							y: - overshoot / 2
							on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
						}),
						contours[2].nodes[1].x
					)
					y: - overshoot / 2
					typeOut: 'line'
				3:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					typeOut: 'line'
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: Math.max(
							( 88 / 80 ) * thickness * opticThickness,
							thickness * opticThickness / ( - Math.sin( Utils.lineAngle( contours[3].nodes[0].point, contours[3].nodes[1].point ) ) )
						)
						angle: Utils.lineAngle( contours[3].nodes[0].point, contours[3].nodes[1].point ) - Math.PI / 2 + Math.PI
						angle: Math.acos( contours[1].nodes[0].expand.width / contours[3].nodes[0].expand.width )
						distr: 1
					})
				1:
					x: contours[4].nodes[1].expandedTo[0].x
					y: contours[4].nodes[1].expandedTo[0].y
					expand: Object({
						width: thickness * opticThickness + Math.min( 60, ( 60 / 80 ) * thickness * opticThickness )
						angle: Utils.lineAngle( contours[4].nodes[0].point, contours[4].nodes[1].point ) + Math.PI - (1 / 180*Math.PI)
						distr: 0
					})
		4:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 640 + 200 * width - (18)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 68 / 80 ) * thickness * opticThickness * contrast
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[1].nodes[0].expandedTo[1].x + ( contours[4].nodes[0].expandedTo[0].x - contours[1].nodes[0].expandedTo[1].x ) * ( 260 / 460 )
					y: ( 15 / 660 ) * capHeight
					expand: Object({
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: Utils.lineAngle( contours[4].nodes[0].point, contours[4].nodes[1].point ) + Math.PI / 2
						distr: 1
					})
		5:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[4].nodes[1].expandedTo[1].x
					y: contours[4].nodes[1].expandedTo[1].y
					typeOut: 'line'
				1:
					x: Math.min(
						Utils.onLine({
							y: - overshoot / 2
							on: [ contours[4].nodes[0].expandedTo[1].point, contours[4].nodes[1].expandedTo[1].point ]
						}),
						contours[4].nodes[1].expandedTo[1].x
					)
					y: - overshoot / 2
					typeOut: 'line'
				2:
					x: Math.min(
						Utils.onLine({
							y: - overshoot / 2
							on: [ contours[3].nodes[0].expandedTo[0].point, contours[3].nodes[1].expandedTo[0].point ]
						}),
						contours[5].nodes[1].x
					)
					y: - overshoot / 2
					typeOut: 'line'
				3:
					x: contours[3].nodes[1].expandedTo[0].x
					y: contours[3].nodes[1].expandedTo[0].y
					typeOut: 'line'
		6:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[0].x
					y: contours[1].nodes[0].y
					typeOut: 'line'
				1:
					x: Math.min(
						Utils.onLine({
							y: capHeight + overshoot / 2
							on: [ contours[0].nodes[1].point, contours[1].nodes[0].point ]
						}),
						contours[1].nodes[0].expandedTo[0].x + ( contours[3].nodes[0].x - contours[1].nodes[0].expandedTo[0].x ) * 0.5
					)
					y: capHeight + overshoot / 2
					typeOut: 'line'
				2:
					x: Math.max(
						Utils.onLine({
							y: capHeight + overshoot / 2
							on: [ contours[3].nodes[1].expandedTo[1].point, contours[3].nodes[0].point ]
						}),
						contours[6].nodes[1].x
					)
					y: capHeight + overshoot / 2
					typeOut: 'line'
				3:
					x: contours[3].nodes[0].x
					y: contours[3].nodes[0].y
					typeOut: 'line'
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0].point
					scaleX: -1
					reversed: true
			parentParameters:
				serifWidth: Math.max( ( 55 / 65 ) * serifWidth, serifWidth - 10 )
			transformOrigin: contours[0].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1].point
			parentParameters:
				serifWidth: Math.min( ( 110 / 65 ) * serifWidth, serifWidth + 45 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		2:
			base: ['serif-oblique-acute', 'none']
			id: 'topleft2'
			parentAnchors:
				0:
					base: contours[4].nodes[0].expandedTo[0].point
					noneAnchor: contours[4].nodes[0].expandedTo[0].point
					opposite: contours[4].nodes[0].expandedTo[1].point
					obliqueEndPoint: contours[4].nodes[1].expandedTo[0].point
					scaleX: -1
					reversed: true
			parentParameters:
				serifWidth: Math.min( ( 100 / 65 ) * serifWidth, serifWidth + 35 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
			transformOrigin: contours[4].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[4].nodes[0].expandedTo[1].point
					noneAnchor: contours[4].nodes[0].expandedTo[1].point
					opposite: contours[4].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[4].nodes[1].expandedTo[1].point
			parentParameters:
				serifWidth: Math.max( ( 55 / 65 ) * serifWidth, serifWidth - 10 )
				serifHeight: Math.max( ( 40 / 50 ) * serifHeight, serifHeight - 10 )
			transformOrigin: contours[4].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		# 4:
		# 	base: ['inktrap', 'none']
		# 	id: 'inktrap'
		# 	parentAnchors:
		# 		0:
		# 			x: 0
		# 			y: 0
		# 			noneAnchor: contours[0].nodes[0].point
		# 	transformOrigin: contours[0].nodes[0].point
		# 	transforms: Array(
		# 		[ 'scale', inktrap ]
		# 	)
