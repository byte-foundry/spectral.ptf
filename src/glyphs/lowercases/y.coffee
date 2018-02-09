# TODO: apex not in the middle when extra width — it does only with extrem contrast
exports.glyphs['y'] =
	unicode: 'y'
	glyphName: 'y'
	characterName: 'LATIN SMALL LETTER Y'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing  - 23 + ( 45 / 65 ) * serifWidth
		spacingRight: 50 * spacing - 23 + ( 50 / 65 ) * serifWidth
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) * 0.5
			y: xHeight + diacriticHeight
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
						angle: 0
						distr: 0.25
				1:
					x: Utils.onLine({
						y: ( 10 / 80 ) * thickness
						on: [ contours[1].nodes[0].expandedTo[0], contours[1].nodes[1].expandedTo[0] ]
					})
					y: ( 10 / 80 ) * thickness
					typeIn: 'line'
					expand:
						width: thickness / Math.sin(Utils.lineAngle({x: contours[0].nodes[1].x, y: contours[0].nodes[1].y}, {x: contours[0].nodes[0].expandedTo[0].x, y: contours[0].nodes[0].expandedTo[0].y}) - Utils.lineAngle({x: contours[1].nodes[1].expandedTo[1].x, y: contours[1].nodes[1].expandedTo[1].y}, {x: contours[1].nodes[0].expandedTo[1].x, y: contours[1].nodes[0].expandedTo[1].y}))
						angle: Utils.lineAngle({x: contours[1].nodes[1].expandedTo[1].x, y: contours[1].nodes[1].expandedTo[1].y}, {x: contours[1].nodes[0].expandedTo[1].x, y: contours[1].nodes[0].expandedTo[1].y})
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						(contours[0].nodes[0].x - (0.25 * ( 90 / 80 ) * thickness)) + 230 + 200 * width - (11),
						# (contours[0].nodes[0].x - (0.25 * ( 90 / 80 ) * thickness)) + contours[0].nodes[0].expand.width + 0.75 * ( 50 / 80 ) * thickness + 10
						(contours[0].nodes[0].x - (0.25 * ( 90 / 80 ) * thickness)) + 0.75 * ( 50 / 80 ) * thickness + 10
					)
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 43 / 80 ) * thickness * contrast
						angle: 0
						distr: 0.75
				1:
					x: (spacingLeft + contours[0].nodes[0].expand.width * contrast) + ( contours[1].nodes[0].expandedTo[0].x - (spacingLeft + contours[0].nodes[0].expand.width * contrast) ) * 0.48 - (22)
					x: contours[0].nodes[0].x * 0.52 + contours[1].nodes[0].x * 0.48
					y: ( ( 100 - ( 20 / 80 ) * thickness) / 250 ) * descender
					dirOut: Utils.lineAngle({x: contours[1].nodes[0].x, y: contours[1].nodes[0].y}, {x: contours[1].nodes[1].x, y: contours[1].nodes[1].y})
					tensionOut: 1.2
					typeIn: 'line'
					expand:
						width: ( 40 / 80 ) * thickness * contrast
						angle: Utils.lineAngle({x: contours[1].nodes[0].x, y: contours[1].nodes[0].y}, {x: contours[1].nodes[1].x, y: contours[1].nodes[1].y}) + Math.PI / 2
						distr: 1
				2:
					x: contours[0].nodes[0].expandedTo[0].x + 60
					y: ( 240 / 250 ) * descender
					dirIn: 0
					tensionIn: 1.2
					expand:
						width: ( 85 / 80 ) * thickness
						angle:( 180 + 80 ) / 180 * Math.PI
						distr: 1
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[2].expandedTo[1].x
					y: contours[1].nodes[2].expandedTo[1].y
					typeIn: 'line'
					dirOut: Math.PI
					tensionOut: 1.2
				1:
					x: contours[1].nodes[2].expandedTo[1].x - ( 34 / 80 ) * thickness
					y: contours[1].nodes[2].expandedTo[1].y + ( contours[1].nodes[2].expandedTo[0].y - contours[1].nodes[2].expandedTo[1].y ) * ( 29 / 83 )
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					tensionIn: 1.2
				2:
					x: contours[2].nodes[1].x
					y: contours[1].nodes[2].expandedTo[0].y - 4
					typeOut: 'line'
					typeIn: 'line'
				3:
					x: contours[2].nodes[2].x + 4
					y: contours[1].nodes[2].expandedTo[0].y
					typeOut: 'line'
					typeIn: 'line'
				4:
					x: contours[1].nodes[2].expandedTo[0].x
					y: contours[1].nodes[2].expandedTo[0].y
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
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[0]
					scaleX: -1
					reversed: true
			parameters:
				serifWidth: Math.min( ( 100 / 65 ) * serifWidth, serifWidth + 35 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
			transformOrigin: contours[1].nodes[0].expandedTo[0]
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
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[1]
			parameters:
				serifWidth: Math.max( ( 60 / 65 ) * serifWidth, serifWidth - 5 )
				serifHeight: Math.max( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
			transformOrigin: contours[1].nodes[0].expandedTo[1]
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
