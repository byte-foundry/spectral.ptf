exports.glyphs['w'] =
	unicode: 'w'
	glyphName: 'w'
	characterName: 'LATIN SMALL LETTER W'
	ot:
		advanceWidth: contours[4].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing - 25 + ( 55 / 65 ) * serifWidth
		spacingRight: 50 * spacing - 25 + ( 55 / 65 ) * serifWidth
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
					x: spacingLeft + (22/80) * thickness
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( thickness ) / Math.sin( Math.PI - Utils.lineAngle( {x: contours[0].nodes[1].x, y: contours[0].nodes[1].y}, { x: contours[0].nodes[0].x - (0.25 * ( 90 / 80 ) * thickness), y: xHeight } ) )
						angle: 0 + 'deg'
						distr: 0.25
				1:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					typeIn: 'line'
					expand:
						width: thickness / Math.sin(Utils.lineAngle({x: contours[0].nodes[1].x, y: contours[0].nodes[1].y}, {x: contours[0].nodes[0].expandedTo[0].x, y: contours[0].nodes[0].expandedTo[0].y}) - Utils.lineAngle({x: contours[1].nodes[1].expandedTo[1].x, y: contours[1].nodes[1].expandedTo[1].y}, {x: contours[1].nodes[0].expandedTo[1].x, y: contours[1].nodes[0].expandedTo[1].y}))
						angle: Utils.lineAngle({x: contours[0].nodes[1].x, y: contours[0].nodes[1].y}, {x: contours[1].nodes[0].expandedTo[0].x, y: contours[1].nodes[0].expandedTo[0].y})
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					# x: (spacingLeft + (22/80) * thickness - 0.25 * contours[0].nodes[0].expand.width) + ( ((spacingLeft + (22/80) * thickness - 0.25 * contours[0].nodes[0].expand.width) + 495 + 200 * width - (15) - 0.25 * ( 50 / 80 ) * thickness * contrast) - (spacingLeft + (22/80) * thickness - 0.25 * contours[0].nodes[0].expand.width) ) * ( 358 / 697 )
					x: (spacingLeft + (22/80) * thickness) + ( ((spacingLeft + (22/80) * thickness) + 495 + 200 * width - (15) - 0.25 * ( 50 / 80 ) * thickness * contrast) - (spacingLeft + (22/80) * thickness) ) * ( 358 / 697 )
					y: Math.max(
						xHeight - 12,
						xHeight - ( 12 / 80 ) * thickness
					)
					typeOut: 'line'
					expand:
						width: ( 40 / 80 ) * thickness * contrast
						angle: - Math.min(
							( 23 / 80 ) * thickness,
							30
						) + 'deg'
						distr: 0
				1:
					x: (spacingLeft) + ( contours[1].nodes[0].expandedTo[0].x) * 0.5 - contours[1].nodes[1].expand.width + (4)
					y: 0
					typeIn: 'line'
					expand:
						width: ( 30 / 80 ) * thickness * contrast
						angle: Utils.lineAngle({x: contours[1].nodes[0].x, y: contours[1].nodes[0].y}, {x: contours[1].nodes[1].x, y: contours[1].nodes[1].y}) + Math.PI / 2
						distr: 1
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
					typeOut: 'line'
					typeIn: 'line'
				1:
					x: Math.min(
						Utils.onLine({
							y: 0
							on: [ contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0] ]
						}),
						contours[1].nodes[1].expandedTo[1].x
					)
					y: 0
					typeIn: 'line'
					typeOut: 'line'
				2:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					typeOut: 'line'
					typeIn: 'line'
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					typeOut: 'line'
					expand:
						width: thickness / Math.sin(Utils.lineAngle({x: contours[1].nodes[0].expandedTo[1].x, y: contours[1].nodes[0].expandedTo[1].y}, {x: contours[1].nodes[1].expandedTo[1].x, y: contours[1].nodes[1].expandedTo[1].y}) - Utils.lineAngle({x: contours[3].nodes[0].x, y: contours[3].nodes[0].y}, {x: contours[3].nodes[1].expandedTo[1].x, y: contours[3].nodes[1].expandedTo[1].y}))
						angle: Math.PI + Utils.lineAngle({x: contours[1].nodes[1].expandedTo[1].x, y: contours[1].nodes[1].expandedTo[1].y}, {x: contours[1].nodes[0].expandedTo[1].x, y: contours[1].nodes[0].expandedTo[1].y})
						distr: 1
				1:
					x: contours[4].nodes[1].expandedTo[0].x
					y: contours[4].nodes[1].expandedTo[0].y
					typeIn: 'line'
					expand:
						width: ( 30 / 80 ) * thickness * contrast
						angle: Utils.lineAngle({x: contours[4].nodes[0].expandedTo[0].x, y: contours[4].nodes[0].expandedTo[0].y}, {x: contours[3].nodes[1].x, y: contours[3].nodes[1].y})
						distr: 0
		4:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + 495 + 200 * width - (15)
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 50 / 80 ) * thickness * contrast
						angle: 0 + 'deg'
						distr: 0.75
				1:
					x: contours[1].nodes[0].expandedTo[0].x + ( contours[4].nodes[0].expandedTo[1].x - contours[1].nodes[0].expandedTo[0].x ) * ( 150 / 340 )
					y: 0
					typeIn: 'line'
					expand:
						width: ( 28 / 80 ) * thickness * contrast
						angle: Utils.lineAngle({x: contours[4].nodes[0].x, y: contours[4].nodes[0].y}, {x: contours[4].nodes[1].x, y: contours[4].nodes[1].y}) + Math.PI / 2
						distr: 1
		5:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[4].nodes[1].expandedTo[1].x
					y: contours[4].nodes[1].expandedTo[1].y
					typeOut: 'line'
					typeIn: 'line'
				1:
					x: Math.min(
						Utils.onLine({
							y: 0
							on: [ contours[3].nodes[0].expandedTo[0], contours[3].nodes[1].expandedTo[0] ]
						}),
						contours[4].nodes[1].expandedTo[1].x
					)
					y: 0
					typeOut: 'line'
					typeIn: 'line'
				2:
					x: contours[3].nodes[1].expandedTo[0].x
					y: contours[3].nodes[1].expandedTo[0].y
					typeOut: 'line'
					typeIn: 'line'
		6:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
					typeOut: 'line'
					typeIn: 'line'
				1:
					x: Math.min(
						Utils.onLine({
							y: xHeight
							on: [ contours[1].nodes[0].expandedTo[0], contours[1].nodes[1].expandedTo[1] ]
						}),
						contours[1].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[1].nodes[0].expandedTo[0].x ) * 0.5
					)
					y: xHeight
					typeOut: 'line'
					typeIn: 'line'
				2:
					x: Math.max(
						Utils.onLine({
							y: xHeight
							on: [ contours[1].nodes[0].expandedTo[1], contours[3].nodes[1].expandedTo[1] ]
						}),
						contours[1].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[1].nodes[0].expandedTo[0].x ) * 0.5
					)
					y: xHeight
					typeOut: 'line'
					typeIn: 'line'
				3:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					typeOut: 'line'
					typeIn: 'line'
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0]
					scaleX: -1
					reversed: true
			parameters:
				serifWidth: Math.max( ( 55 / 65 ) * serifWidth, serifWidth - 10 )
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1]
			parameters:
				serifWidth: Math.min( ( 110 / 65 ) * serifWidth, serifWidth + 45 )
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		2:
			base: ['serif-oblique-acute', 'none']
			id: 'topleft2'
			parentAnchors:
				0:
					base: contours[4].nodes[0].expandedTo[0]
					noneAnchor: contours[4].nodes[0].expandedTo[0]
					opposite: contours[4].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[4].nodes[1].expandedTo[0]
					scaleX: -1
					reversed: true
			parameters:
				serifWidth: Math.min( ( 100 / 65 ) * serifWidth, serifWidth + 35 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
			transformOrigin: contours[4].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[4].nodes[0].expandedTo[1]
					noneAnchor: contours[4].nodes[0].expandedTo[1]
					opposite: contours[4].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[4].nodes[1].expandedTo[1]
			parameters:
				serifWidth: Math.max( ( 60 / 65 ) * serifWidth, serifWidth - 5 )
				serifHeight: Math.max( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
			transformOrigin: contours[4].nodes[0].expandedTo[1]
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
		# 			noneAnchor: contours[0].nodes[0]
		# 	transformOrigin: contours[0].nodes[0]
		# 	transforms: Array(
		# 		[ 'scale', inktrap ]
		# 	)
