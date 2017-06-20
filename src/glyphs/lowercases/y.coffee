# TODO: apex not in the middle when extra width — it does only with extrem contrast
exports.glyphs['y'] =
	unicode: 'y'
	glyphName: 'y'
	characterName: 'LATIN SMALL LETTER Y'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
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
					expand: Object({
						width: ( thickness ) / Math.sin( Math.PI - Utils.lineAngle( contours[0].nodes[1].point, { x: contours[0].nodes[0].x - (0.25 * ( 90 / 80 ) * thickness), y: xHeight } ) )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: Utils.onLine({
						y: ( 10 / 80 ) * thickness
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
					})
					y: ( 10 / 80 ) * thickness
					expand: Object({
						width: thickness / Math.sin( Utils.lineAngle( contours[0].nodes[1].point, contours[0].nodes[0].expandedTo[0].point ) - Utils.lineAngle( contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point ) )
						angle: Utils.lineAngle( contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point )
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						(contours[0].nodes[0].x - (0.25 * ( 90 / 80 ) * thickness)) + 230 + 200 * width - (11),
						(contours[0].nodes[0].x - (0.25 * ( 90 / 80 ) * thickness)) + contours[0].nodes[0].expand.width + 0.75 * ( 50 / 80 ) * thickness + 10
					)
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 43 / 80 ) * thickness * contrast
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: (spacingLeft + contours[0].nodes[0].expand.width * contrast) + ( contours[1].nodes[0].expandedTo[0].x - (spacingLeft + contours[0].nodes[0].expand.width * contrast) ) * 0.48 - (22)
					y: ( ( 100 - ( 20 / 80 ) * thickness) / 250 ) * descender
					dirOut: Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].point )
					tensionOut: 1.2
					expand: Object({
						width: ( 40 / 80 ) * thickness * contrast
						angle: Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].point ) + Math.PI / 2
						distr: 1
					})
				2:
					x: contours[0].nodes[0].expandedTo[0].x + 60
					y: ( 240 / 250 ) * descender
					dirIn: 0 + 'deg'
					tensionIn: 1.2
					type: 'smooth'
					expand: Object({
						width: ( 85 / 80 ) * thickness
						angle: 180 + 80 + 'deg'
						distr: 1
					})
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[2].expandedTo[1].x
					y: contours[1].nodes[2].expandedTo[1].y
					dirOut: 180 + 'deg'
					tensionOut: 1.2
				1:
					x: contours[1].nodes[2].expandedTo[1].x - ( 34 / 80 ) * thickness
					y: contours[1].nodes[2].expandedTo[1].y + ( contours[1].nodes[2].expandedTo[0].y - contours[1].nodes[2].expandedTo[1].y ) * ( 29 / 83 )
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.2
				2:
					x: contours[2].nodes[1].x
					y: contours[1].nodes[2].expandedTo[0].y - 4
					typeOut: 'line'
				3:
					x: contours[2].nodes[2].x + 4
					y: contours[1].nodes[2].expandedTo[0].y
					typeOut: 'line'
				4:
					x: contours[1].nodes[2].expandedTo[0].x
					y: contours[1].nodes[2].expandedTo[0].y
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
				serifWidth: Math.max( ( 60 / 65 ) * serifWidth, serifWidth - 5 )
				serifHeight: Math.max( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
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
