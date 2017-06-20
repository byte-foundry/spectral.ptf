exports.glyphs['x'] =
	unicode: 'x'
	glyphName: 'x'
	characterName: 'LATIN SMALL LETTER X'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 26 + ( 30 / 65 ) * serifWidth
		spacingRight: 50 * spacing + 26 + ( 10 / 65 ) * serifWidth
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
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( ( 67 / 80 ) * thickness ) / Math.sin( Utils.lineAngle( { x: spacingLeft - (0.25 * thickness), y: xHeight }, contours[0].nodes[1].point ) )
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[0].x - ( 20 / 80 ) * thickness + 125 + 200 * width + (20)
					y: Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: ( ( 72 / 80 ) * thickness ) / Math.sin( Utils.lineAngle( { x: spacingLeft - (0.25 * thickness), y: xHeight }, contours[0].nodes[1].point ) )
						angle: 0 + 'deg'
						distr: 0.75
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * 0.5
					y: Utils.onLine({
						x: contours[0].nodes[0].expandedTo[1].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * 0.5
						on: [ contours[1].nodes[1].point, contours[2].nodes[1].point ]
					})
					typeOut: 'line'
					expand: Object({
						width: ( 30 / 80 ) * thickness * contrast * contrastExtremity
						angle: Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point )
						distr: 0
					})
				1:
					x: contours[0].nodes[1].expandedTo[0].x - 26 - (40/80) * thickness * contrast
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: - ( 43 / 80 ) * thickness / Math.sin( Utils.lineAngle( contours[1].nodes[1].point, contours[1].nodes[0].expandedTo[1].point )) * contrast
						angle: 0 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * 0.5
					y: Utils.onLine({
						x: contours[0].nodes[0].expandedTo[1].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * 0.5
						on: [ contours[1].nodes[1].expandedTo[1].point, contours[2].nodes[1].expandedTo[1].point ]
					})
					typeOut: 'line'
					expand: Object({
						width: ( 30 / 80 ) * thickness * contrast * contrastExtremity
						angle: Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point )
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + (0)
					y: Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: contours[1].nodes[1].expand.width
						angle: 180 + 'deg'
						distr: 1
					})
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1].point
					scaleX: -1
					reversed: true
			parentParameters:
				serifWidth: Math.max( ( 30 / 65 ) * serifWidth, serifWidth - 35 )
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0].point
			parentParameters:
				serifWidth: Math.min( ( 110 / 65 ) * serifWidth, serifWidth + 45 )
			transformOrigin: contours[0].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		2:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1].point
					noneAnchor: contours[0].nodes[1].expandedTo[1].point
					opposite: contours[0].nodes[1].expandedTo[0].point
					obliqueEndPoint: contours[0].nodes[0].expandedTo[1].point
			parentParameters:
				serifWidth: Math.min( ( 95 / 65 ) * serifWidth, serifWidth + 30 )
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0].point
					noneAnchor: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					obliqueEndPoint: contours[0].nodes[0].expandedTo[0].point
					scaleX: -1
					reversed: true
			parentParameters:
				serifWidth: Math.max( ( 30 / 65 ) * serifWidth, serifWidth - 35 )
		4:
			base: ['serif-oblique-acute', 'none']
			id: 'topleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0].point
					noneAnchor: contours[1].nodes[1].expandedTo[0].point
					opposite: contours[1].nodes[1].expandedTo[1].point
					obliqueEndPoint: contours[1].nodes[0].expandedTo[0].point
					scaleX: -1
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min( ( 95 / 65 ) * serifWidth, serifWidth + 30 )
		5:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1].point
					noneAnchor: contours[1].nodes[1].expandedTo[1].point
					opposite: contours[1].nodes[1].expandedTo[0].point
					obliqueEndPoint: contours[1].nodes[0].expandedTo[1].point
			transformOrigin: contours[1].nodes[1].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.max( ( 30 / 65 ) * serifWidth, serifWidth - 30 )
		6:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1].point
					noneAnchor: contours[2].nodes[1].expandedTo[1].point
					opposite: contours[2].nodes[1].expandedTo[0].point
					obliqueEndPoint: contours[2].nodes[0].expandedTo[1].point
			parentParameters:
				serifWidth: Math.max( ( 35 / 65 ) * serifWidth, serifWidth - 30 )
		7:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0].point
					noneAnchor: contours[2].nodes[1].expandedTo[0].point
					opposite: contours[2].nodes[1].expandedTo[1].point
					obliqueEndPoint: contours[2].nodes[0].expandedTo[0].point
					scaleX: -1
					reversed: true
			parentParameters:
				serifWidth: Math.min( ( 105 / 65 ) * serifWidth, serifWidth + 40 )
