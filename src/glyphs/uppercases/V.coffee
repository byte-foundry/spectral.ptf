# TODO: width and oblics — see x.coffee
exports.glyphs['V'] =
	unicode: 'V'
	glyphName: 'V'
	characterName: 'LATIN CAPITAL LETTER V'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 35 + ( 47 / 65 ) * serifWidth
		spacingRight: 50 * spacing + 35 + ( 37 / 65 ) * serifWidth
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
						width: thickness * opticThickness + Math.min( 45, ( 45 / 80 ) * thickness * opticThickness )
						angle: Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].point ) + Math.PI - (1 / 180*Math.PI)
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						spacingLeft + 380 + 200 * width - (16),
						spacingLeft + contours[0].nodes[0].expand.width + 0.75 * ( 67 / 80 ) * thickness * opticThickness + 10
					)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 67 / 80 ) * thickness * opticThickness * contrast
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: (spacingLeft + contours[0].nodes[0].expand.width * contrast) + ( contours[1].nodes[0].expandedTo[0].x - (spacingLeft + contours[0].nodes[0].expand.width * contrast) ) * 0.51
					y: - overshoot / 2
					expand: Object({
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].point ) + Math.PI / 2
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
							on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
						}),
						contours[1].nodes[1].expandedTo[1].x
					)
					y: contours[1].nodes[1].expandedTo[1].y
					typeOut: 'line'
				2:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
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
					base: contours[1].nodes[0].expandedTo[0].point
					noneAnchor: contours[1].nodes[0].expandedTo[0].point
					opposite: contours[1].nodes[0].expandedTo[1].point
					obliqueEndPoint: contours[1].nodes[1].expandedTo[0].point
					scaleX: -1
					reversed: true
			parentParameters:
				serifWidth: Math.min( ( 100 / 65 ) * serifWidth, serifWidth + 35 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
			transformOrigin: contours[1].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1].point
					noneAnchor: contours[1].nodes[0].expandedTo[1].point
					opposite: contours[1].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[1].nodes[1].expandedTo[1].point
			parentParameters:
				serifWidth: Math.max( ( 45 / 65 ) * serifWidth, serifWidth - 20 )
				serifHeight: Math.max( ( 40 / 50 ) * serifHeight, serifHeight - 10 )
			transformOrigin: contours[1].nodes[0].expandedTo[1].point
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
