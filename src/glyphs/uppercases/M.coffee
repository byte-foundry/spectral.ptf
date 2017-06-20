exports.glyphs['M'] =
	unicode: 'M'
	glyphName: 'M'
	characterName: 'LATIN CAPITAL LETTER M'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 60 + ( 80 / 65 ) * serifWidth
		spacingRight: 50 * spacing + 60 + ( 70 / 65 ) * serifWidth
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
					x: spacingLeft + (15/80) * thickness * opticThickness
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 60 / 80 ) * thickness * opticThickness * contrast
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5,
						contours[0].nodes[0].expandedTo[0].x + 35
					)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[2].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.51
					y: - overshoot / 2
					typeOut: 'line'
					expand: Object({
						width: ( 95 / 80 ) * thickness * opticThickness
						angle: 45 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					expand: Object({
						width: ( 95 / 80 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + 495 + 200 * width - (23)
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 85 / 80 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[2].nodes[0].x - 25
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: ( 85 / 80 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.75
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[0].x + ( 45 / 80 ) * thickness * opticThickness
					y: contours[1].nodes[0].expandedTo[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 70 / 80 ) * thickness * opticThickness * contrast
						angle: Math.PI - Utils.lineAngle( contours[3].nodes[1].point, contours[1].nodes[0].expandedTo[0].point )
						distr: 1
					})
				1:
					x: contours[2].nodes[1].expandedTo[0].x
					y: contours[2].nodes[1].expandedTo[0].y
					expand: Object({
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: Utils.lineAngle( contours[3].nodes[1].point, contours[1].nodes[0].expandedTo[0].point ) + Math.PI / 2
						distr: 0
					})
		4:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[3].nodes[0].expandedTo[1].x
					y: contours[3].nodes[0].expandedTo[1].y
					typeOut: 'line'
				1:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
					typeOut: 'line'
				2:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					typeOut: 'line'
				3:
					x: contours[3].nodes[0].expandedTo[0].x
					y: contours[3].nodes[0].expandedTo[0].y
					typeOut: 'line'
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0].point
			parentParameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1].point
					reversed: true
					scaleX: -1
			parentParameters:
				serifWidth: Math.min( ( 85 / 65 ) * serifWidth, serifWidth + 20 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		2:
			base: ['serif-oblique-acute', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0].point
					noneAnchor: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					obliqueEndPoint: contours[0].nodes[0].expandedTo[0].point
					reversed: true
					scaleX: -1
			transformOrigin: contours[0].nodes[1].expandedTo[0].point
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'scaleX', -1 ]
			)
			parentParameters:
				serifWidth: Math.min( ( 90 / 65 ) * serifWidth, serifWidth + 25 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		3:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[0].point
					noneAnchor: contours[2].nodes[0].expandedTo[0].point
					opposite: contours[2].nodes[0].expandedTo[1].point
					obliqueEndPoint: contours[2].nodes[1].expandedTo[0].point
			parentParameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		4:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[1].point
					noneAnchor: contours[2].nodes[0].expandedTo[1].point
					opposite: contours[2].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[2].nodes[1].expandedTo[1].point
					reversed: true
					scaleX: -1
			parentParameters:
				serifWidth: Math.min( ( 70 / 65 ) * serifWidth, serifWidth + 5 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		5:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1].point
					noneAnchor: contours[2].nodes[1].expandedTo[1].point
					opposite: contours[2].nodes[1].expandedTo[0].point
					obliqueEndPoint: contours[2].nodes[0].expandedTo[1].point
			transformOrigin: contours[2].nodes[1].expandedTo[1].point
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'scaleX', -1 ]
			)
			parentParameters:
				serifWidth: Math.min( ( 90 / 65 ) * serifWidth, serifWidth + 25 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		6:
			# TODO: serifHeight obtuse/acute?
			base: ['none', 'serif-oblique-obtuse']
			id: 'topleftright'
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
		7:
			base: ['none', 'serif-oblique-acute']
			id: 'toprightleft'
			parentAnchors:
				0:
					base: contours[3].nodes[1].expandedTo[0].point
					noneAnchor: contours[3].nodes[1].expandedTo[0].point
					opposite: contours[3].nodes[1].expandedTo[1].point
					obliqueEndPoint: contours[3].nodes[0].expandedTo[0].point
					scaleX: -1
					reversed: true
			transformOrigin: contours[3].nodes[1].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
