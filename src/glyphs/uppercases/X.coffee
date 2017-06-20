# TODO: width and oblics — see x.coffee
exports.glyphs['X'] =
	unicode: 'X'
	glyphName: 'X'
	characterName: 'LATIN CAPITAL LETTER X'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 35 + ( 40 / 65 ) * serifWidth
		spacingRight: 50 * spacing + 35 + ( 30 / 65 ) * serifWidth
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
					x: spacingLeft + (26)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 105 / 80 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 400 + 200 * width - (57)
					y: 0 + Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: ( 115 / 80 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x - Math.min( 20, ( (20) / 80 ) * thickness ) - (50),
						# contours[0].nodes[1].expandedTo[1].x - Math.min( 70, ( (70) / 80 ) * thickness ),
						# contours[0].nodes[0].expandedTo[1].x + ( contours[0].nodes[1].expandedTo[0].x - contours[2].nodes[1].expandedTo[1].x ),
						# contours[0].nodes[1].x,
						Utils.onLine({
							y: capHeight - Math.max( 0, serifHeight * serifArc )
							on: [ contours[2].nodes[0].expandedTo[0].point, contours[2].nodes[1].expandedTo[0].point ]
						})
					)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 65 / 80 ) * thickness * opticThickness * Math.sqrt( width )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: Utils.onLine({
						y: Math.max(
							( 315 / 660 ) * capHeight + Math.min( 45, ( ( 90 - 45 * width ) / 80 ) * thickness ),
							capHeight / 2
						)
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					}) - ( 15 / 80 ) * thickness * opticThickness
					y: Math.max(
						( 315 / 660 ) * capHeight + Math.min( 45, ( ( 90 - 45 * width ) / 80 ) * thickness ),
						capHeight / 2
					)
					expand: Object({
						width: ( 55 / 80 ) * thickness * opticThickness * Math.sqrt( width )
						angle: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point )
						distr: 0.5
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: Math.min(
							( 330 / 660 ) * capHeight - ( 15 / 80 ) * thickness,
							capHeight / 2
						)
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					}) + ( 15 / 80 ) * thickness * opticThickness
					y: Math.min(
						( 330 / 660 ) * capHeight - ( 15 / 80 ) * thickness,
						capHeight / 2
					)
					typeOut: 'line'
					expand: Object({
						width: ( 55 / 80 ) * thickness * opticThickness * Math.sqrt( width )
						angle: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point )
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 5 + (6)
					y: 0 + Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: ( 70 / 80 ) * thickness * opticThickness * Math.sqrt( width )
						angle: 0 + 'deg'
						distr: 0.25
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
			transformOrigin: contours[0].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.max( ( 40 / 65 ) * serifWidth, serifWidth - 25 )
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1].point
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min( ( 120 / 65 ) * serifWidth, serifWidth + 55 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		2:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0].point
					noneAnchor: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					obliqueEndPoint: contours[0].nodes[0].expandedTo[0].point
			parentParameters:
				serifWidth: Math.min( ( 110 / 65 ) * serifWidth, serifWidth + 45 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1].point
					noneAnchor: contours[0].nodes[1].expandedTo[1].point
					opposite: contours[0].nodes[1].expandedTo[0].point
					obliqueEndPoint: contours[0].nodes[0].expandedTo[1].point
					scaleX: -1
					reversed: true
			parentParameters:
				serifWidth: Math.max( ( 40 / 65 ) * serifWidth, serifWidth - 25 )
				serifHeight: Math.max( ( 45 / 50 ) * serifHeight, serifHeight - 5 )
		4:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0].point
					noneAnchor: contours[2].nodes[1].expandedTo[0].point
					opposite: contours[2].nodes[1].expandedTo[1].point
					obliqueEndPoint: contours[2].nodes[0].expandedTo[0].point
			parentParameters:
				serifWidth: Math.max( ( 45 / 65 ) * serifWidth, serifWidth - 20 )
		5:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1].point
					noneAnchor: contours[2].nodes[1].expandedTo[1].point
					opposite: contours[2].nodes[1].expandedTo[0].point
					obliqueEndPoint: contours[2].nodes[0].expandedTo[1].point
					scaleX: -1
					reversed: true
			parentParameters:
				serifWidth: Math.min( ( 130 / 65 ) * serifWidth, serifWidth + 65 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		6:
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
			transformOrigin: contours[1].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min( ( 120 / 65 ) * serifWidth, serifWidth + 55 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		7:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1].point
					noneAnchor: contours[1].nodes[0].expandedTo[1].point
					opposite: contours[1].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[1].nodes[1].expandedTo[1].point
			transformOrigin: contours[1].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.max( ( 40 / 65 ) * serifWidth, serifWidth - 25 )
				serifHeight: Math.max( ( 45 / 50 ) * serifHeight, serifHeight - 5 )
