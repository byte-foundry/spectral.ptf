# TODO: width and oblics — see x.coffee
exports.glyphs['Y'] =
	unicode: 'Y'
	glyphName: 'Y'
	characterName: 'LATIN CAPITAL LETTER Y'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 35 + ( 25 / 65 ) * serifWidth
		spacingRight: 50 * spacing + 35 + ( 30 / 65 ) * serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + ( 45 / 80 ) * diacriticHeight
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
					x: contours[2].nodes[0].x - (15/80) * thickness * opticThickness
					y: ( (300 - ( 35 / 80 ) * thickness * opticThickness) / 660 ) * capHeight
					expand: Object({
						width: ( 90 / 80 ) * thickness * opticThickness
						angle: Utils.lineAngle( contours[1].nodes[1].point, contours[1].nodes[0].point )
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						spacingLeft + 395 + 200 * width - (19),
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
					x: contours[2].nodes[0].x + (15/80) * thickness * opticThickness * contrast
					y: contours[0].nodes[1].y
					expand: Object({
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].point ) + Math.PI / 2
						distr: 1
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: (contours[0].nodes[0].x - 0.25 * contours[0].nodes[0].expand.width) + ( (contours[1].nodes[0].x + 0.25 * contours[1].nodes[0].expand.width) - (contours[0].nodes[0].x - 0.25 * contours[0].nodes[0].expand.width) ) * ( 305 / 595 )
					y: Math.max(
						( ((300 - ( 35 / 80 ) * thickness * opticThickness) + ( 90 / 80 ) * thickness * opticThickness * contrast ) / 660 ) * capHeight,
						contours[0].nodes[1].expandedTo[1].y
					)
					typeOut: 'line'
					expand: Object({
						width: ( 90 / 80 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[2].nodes[0].x
					y: Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: ( 90 / 80 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
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
				serifWidth: Math.max( ( 40 / 65 ) * serifWidth, serifWidth - 25 )
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
				serifWidth: Math.min( ( 115 / 65 ) * serifWidth, serifWidth + 50 )
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
				serifWidth: Math.max( ( 40 / 65 ) * serifWidth, serifWidth - 25 )
				serifHeight: Math.max( ( 40 / 50 ) * serifHeight, serifHeight - 10 )
			transformOrigin: contours[1].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		4:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0].point
					noneAnchor: contours[2].nodes[1].expandedTo[0].point
					opposite: contours[2].nodes[1].expandedTo[1].point
			parentParameters:
				serifWidth: Math.min( ( 90 / 65 ) * serifWidth, serifWidth + 25 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		5:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1].point
					noneAnchor: contours[2].nodes[1].expandedTo[1].point
					opposite: contours[2].nodes[1].expandedTo[0].point
					reversed: true
			transformOrigin: contours[2].nodes[1].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
			parentParameters:
				serifWidth: Math.min( ( 90 / 65 ) * serifWidth, serifWidth + 25 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
