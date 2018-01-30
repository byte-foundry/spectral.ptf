# TODO: width and oblics — see x.coffee
# TODO: thickness, contrast, width…
exports.glyphs['W_cap'] =
	unicode: 'W'
	glyphName: 'W'
	characterName: 'LATIN CAPITAL LETTER W'
	ot:
		advanceWidth: contours[4].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
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
					expand:
						width: Math.max(
							( 93 / 80 ) * thickness * opticThickness,
							thickness * opticThickness / (- Math.sin(Utils.lineAngle({x: contours[0].nodes[0].x, y: contours[0].nodes[0].y}, {x: contours[0].nodes[1].x, y: contours[0].nodes[1].y})))
						)
						angle: 0
						distr: 0.25
				1:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					typeIn: 'line'
					expand:
						width: thickness * opticThickness + Math.min( 60, ( 60 / 80 ) * thickness * opticThickness )
						angle: Utils.lineAngle({x: contours[1].nodes[0].x, y: contours[1].nodes[0].y}, {x: contours[0].nodes[1].x, y: contours[0].nodes[1].y}) + Math.PI - (1 / 180*Math.PI)
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x + ( contours[4].nodes[0].x - contours[0].nodes[0].x ) * 0.5 - (( 37 / 80 ) * thickness) / 2
					y: capHeight - ( 20 / 660 ) * capHeight
					typeOut: 'line'
					expand:
						width: ( 65 / 80 ) * thickness * opticThickness * contrast
						angle:( 180 + 160 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[0].x + ( contours[1].nodes[0].x - contours[0].nodes[0].x ) * ( 265 / 465 )
					y: ( 15 / 660 ) * capHeight
					typeIn: 'line'
					expand:
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: Utils.lineAngle({x: contours[4].nodes[0].x, y: contours[4].nodes[0].y}, {x: contours[4].nodes[1].x, y: contours[4].nodes[1].y}) + Math.PI / 2
						distr: 1
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
					typeIn: 'line'
					typeOut: 'line'
				1:
					x: Math.min(
						Utils.onLine({
							y: - overshoot / 2
							on: [ contours[1].nodes[0].expandedTo[1], contours[1].nodes[1].expandedTo[1] ]
						}),
						contours[1].nodes[1].expandedTo[1].x
					)
					y: - overshoot / 2
					typeIn: 'line'
					typeOut: 'line'
				2:
					x: Utils.onLine({
						y: - overshoot / 2
						on: [ contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0] ]
					})
					x: Math.min(
						Utils.onLine({
							y: - overshoot / 2
							on: [ contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0] ]
						}),
						contours[2].nodes[1].x
					)
					y: - overshoot / 2
					typeOut: 'line'
					typeIn: 'line'
				3:
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
						width: Math.max(
							( 88 / 80 ) * thickness * opticThickness,
							thickness * opticThickness / (- Math.sin(Utils.lineAngle({x: contours[3].nodes[0].x, y: contours[3].nodes[0].y}, {x: contours[3].nodes[1].x, y: contours[3].nodes[1].y})))
						)
						angle: Utils.lineAngle({x: contours[3].nodes[0].x, y: contours[3].nodes[0].y}, {x: contours[3].nodes[1].x, y: contours[3].nodes[1].y}) - Math.PI / 2 + Math.PI
						angle: Math.acos( contours[1].nodes[0].expand.width / contours[3].nodes[0].expand.width )
						distr: 1
				1:
					x: contours[4].nodes[1].expandedTo[0].x
					y: contours[4].nodes[1].expandedTo[0].y
					typeIn: 'line'
					expand:
						width: thickness * opticThickness + Math.min( 60, ( 60 / 80 ) * thickness * opticThickness )
						angle: Utils.lineAngle({x: contours[4].nodes[0].x, y: contours[4].nodes[0].y}, {x: contours[4].nodes[1].x, y: contours[4].nodes[1].y}) + Math.PI - (1 / 180*Math.PI)
						distr: 0
		4:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 640 + 200 * width - (18)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 68 / 80 ) * thickness * opticThickness * contrast
						angle: 0
						distr: 0.75
				1:
					x: contours[1].nodes[0].expandedTo[1].x + ( contours[4].nodes[0].expandedTo[0].x - contours[1].nodes[0].expandedTo[1].x ) * ( 260 / 460 )
					y: ( 15 / 660 ) * capHeight
					typeIn: 'line'
					expand:
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
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
							y: - overshoot / 2
							on: [ contours[4].nodes[0].expandedTo[1], contours[4].nodes[1].expandedTo[1] ]
						}),
						contours[4].nodes[1].expandedTo[1].x
					)
					y: - overshoot / 2
					typeOut: 'line'
					typeIn: 'line'
				2:
					x: Math.min(
						Utils.onLine({
							y: - overshoot / 2
							on: [ contours[3].nodes[0].expandedTo[0], contours[3].nodes[1].expandedTo[0] ]
						}),
						contours[5].nodes[1].x
					)
					y: - overshoot / 2
					typeOut: 'line'
					typeIn: 'line'
				3:
					x: contours[3].nodes[1].expandedTo[0].x
					y: contours[3].nodes[1].expandedTo[0].y
					typeOut: 'line'
					typeIn: 'line'
		6:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[0].x
					y: contours[1].nodes[0].y
					typeOut: 'line'
					typeIn: 'line'
				1:
					x: Math.min(
						Utils.onLine({
							y: capHeight + overshoot / 2
							on: [ contours[0].nodes[1], contours[1].nodes[0] ]
						}),
						contours[1].nodes[0].expandedTo[0].x + ( contours[3].nodes[0].x - contours[1].nodes[0].expandedTo[0].x ) * 0.5
					)
					y: capHeight + overshoot / 2
					typeOut: 'line'
					typeIn: 'line'
				2:
					x: Math.max(
						Utils.onLine({
							y: capHeight + overshoot / 2
							on: [ contours[3].nodes[1].expandedTo[1], contours[3].nodes[0] ]
						}),
						contours[6].nodes[1].x
					)
					y: capHeight + overshoot / 2
					typeOut: 'line'
					typeIn: 'line'
				3:
					x: contours[3].nodes[0].x
					y: contours[3].nodes[0].y
					typeOut: 'line'
					typeIn: 'line'
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft'
			class: 'leftObtuseSerif'
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
			class: 'leftAcuteSerif'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1]
			parameters:
				serifWidth: Math.min( ( 110 / 65 ) * serifWidth, serifWidth + 45 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		2:
			base: ['serif-oblique-acute', 'none']
			id: 'topleft2'
			class: 'rightAcuteSerif'
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
			class: 'rightObtuseSerif'
			parentAnchors:
				0:
					base: contours[4].nodes[0].expandedTo[1]
					noneAnchor: contours[4].nodes[0].expandedTo[1]
					opposite: contours[4].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[4].nodes[1].expandedTo[1]
			parameters:
				serifWidth: Math.max( ( 55 / 65 ) * serifWidth, serifWidth - 10 )
				serifHeight: Math.max( ( 40 / 50 ) * serifHeight, serifHeight - 10 )
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
