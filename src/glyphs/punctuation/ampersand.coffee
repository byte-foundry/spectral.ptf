exports.glyphs['ampersand'] =
	unicode: '&'
	glyphName: 'ampersand'
	characterName: 'AMPERSAND'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 20
		spacingRight: 50 * spacing + serifWidth
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	anchors:
		0:
			serifRight: Utils.pointOnCurve( contours[1].nodes[0].expandedTo[0], contours[1].nodes[0].expandedTo[0], serifHeight, false, 10 )
			serifLeft: Utils.pointOnCurve( contours[1].nodes[0].expandedTo[1], contours[1].nodes[0].expandedTo[1], serifHeight, false, 10 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: ( contours[0].nodes[4].expandedTo[0].x + contours[0].nodes[4].expandedTo[1].x ) / 2 - Math.min( 30, ( 30 / 80 ) * thickness )
					y: ( contours[0].nodes[4].expandedTo[0].y + contours[0].nodes[4].expandedTo[1].y ) / 2
					dirOut: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].expandedTo[1].point ) - ( 20 / 180 * Math.PI )
					expand: Object({
						width: ( 32 / 80 ) * thickness * contrast * contrastExtremity
						angle: Utils.lineAngle( contours[0].nodes[4].expandedTo[1].point, contours[0].nodes[5].expandedTo[1].point )
						distr: 1
					})
				1:
					x: Math.max(
						contours[0].nodes[3].expandedTo[1].x + 145 + 200 * width - (21),
						contours[0].nodes[3].expandedTo[0].x + 0.75 * ( 85 / 80 ) * thickness + 50
					)
					y: ( 542 / 660 ) * capHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 85 / 80 ) * thickness
						angle: 3 + 'deg'
						distr: 0.75
					})
				2:
					x: ( contours[0].nodes[3].expandedTo[1].x + contours[0].nodes[1].expandedTo[1].x ) * ( 181 / 345 )
					y: capHeight + overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 46 / 90 ) * thickness * contrast
						angle: 180 - 100 + 'deg'
						distr: 1
					})
				3:
					x: contours[1].nodes[2].expandedTo[0].x + (57) + (22/80) * thickness
					y: ( 514 / 660 ) * capHeight
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.6
					expand: Object({
						width: ( 89 / 80 ) * thickness
						angle: 180 + 11 + 'deg'
						distr: 0.75
					})
				4:
					x: 175 + 100 * width - 67
					y: ( 305 / 660 ) * capHeight + 25 - (25/80) * thickness
					type: 'smooth'
					tensionIn: 1.2
					typeOut: 'line'
					expand: Object({
						width: ( 95 / 80 ) * thickness
						angle: 180 + 60 + 'deg'
						distr: 1
					})
				5:
					x: contours[1].nodes[2].x + 292 + 200 * width + (27)
					y: 0
					type: 'smooth'
					expand: Object({
						width: ( 100 / 80 ) * thickness / Math.sin( (Math.PI - Utils.lineAngle( contours[0].nodes[5].point, contours[0].nodes[4].expandedTo[0].point )) )
						angle: 180 + 'deg'
						distr: 0.75
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[2].expandedTo[0].x + 405 + 200 * width - (12)
					y: ( 470 / 660 ) * capHeight
					dirOut: Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ) + ( 20 / 180 * Math.PI )
					type: 'smooth'
					expand: Object({
						width: ( 50 / 80 ) * thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				1:
					x: ( contours[1].nodes[2].expandedTo[0].x + contours[1].nodes[0].expandedTo[0].x ) * ( 192 / 596 )
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					tensionIn: 1.6
					expand: Object({
						width: ( 76 / 80 ) * thickness * contrast
						angle: - Math.PI / 2 + Math.acos( Math.max(
							( ( ( contours[1].nodes[0].expandedTo[1].x - contours[1].nodes[2].expandedTo[1].x ) * ( 139 / 443 ) ) - contours[1].nodes[1].x ) / ( ( 76 / 80 ) * thickness * contrast ),
							- 1
						))
						distr: 0
					})
				2:
					x: spacingLeft + (23/80) * thickness
					y: ( ( contours[1].nodes[1].y + Math.sin( contours[1].nodes[1].expand.angle ) * contours[1].nodes[1].expand.width ) + contours[1].nodes[3].expandedTo[1].y ) * ( 132 / 286 ) - (20)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 95 / 80 ) * thickness
						angle: 15 + 'deg'
						distr: 0.25
					})
				3:
					x: ( contours[0].nodes[4].expandedTo[0].x + contours[0].nodes[4].expandedTo[1].x ) / 2 - Math.min( 10, ( 10 / 80 ) * thickness )
					y: Math.min(
						contours[0].nodes[0].y,
						contours[0].nodes[4].expandedTo[1].y + 40
					)
					dirIn: contours[0].nodes[0].dirOut + Math.PI
					tensionIn: 1.4
					expand: Object({
						width: ( 32 / 80 ) * thickness * contrast * contrastExtremity
						angle: Utils.lineAngle( contours[0].nodes[4].expandedTo[0].point, contours[0].nodes[5].expandedTo[0].point )
						distr: 1
					})
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[5].expandedTo[0].point
					noneAnchor: contours[0].nodes[5].expandedTo[0].point
					opposite: contours[0].nodes[5].expandedTo[1].point
					obliqueEndPoint: contours[0].nodes[4].expandedTo[0].point
					scaleX: -1
					reversed: true
			parentParameters:
				serifWidth: Math.max( ( 55 / 65 ) * serifWidth, serifWidth - 10 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		1:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0].point
					noneAnchor: contours[1].nodes[0].expandedTo[0].point
					opposite: contours[1].nodes[0].expandedTo[1].point
					# obliqueEndPoint: { x: contours[1].nodes[0].expandedTo[0].x - Math.sin( contours[1].nodes[0].dirOut - Math.PI / 2 ) * contours[1].nodes[0].y, y: 0 }
					obliqueEndPoint: contours[1].nodes[1].expandedTo[0].point
					obliqueEndPoint: contours[0].nodes[5].expandedTo[1].point
					obliqueEndPoint: anchors[0].serifRight
			transformOrigin: contours[1].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min( ( 75 / 65 ) * serifWidth, serifWidth + 10 )
		2:
			base: ['serif-oblique-acute', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1].point
					noneAnchor: contours[1].nodes[0].expandedTo[1].point
					opposite: contours[1].nodes[0].expandedTo[1].point
					# obliqueEndPoint: { x: contours[1].nodes[0].expandedTo[1].x - Math.sin( contours[1].nodes[0].dirOut - Math.PI / 2 ) * contours[1].nodes[0].y, y: 0 }
					obliqueEndPoint: contours[1].nodes[1].expandedTo[0].point
					obliqueEndPoint: contours[0].nodes[5].expandedTo[1].point
					obliqueEndPoint: anchors[0].serifLeft
					scaleX: -1
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min( ( 120 / 65 ) * serifWidth, serifWidth + 55 )
		# 		serifHeight: Math.min( ( 60 / 50 ) * serifHeight, serifHeight + 10 )
