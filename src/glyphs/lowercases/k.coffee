# TODO: oblique
exports.glyphs['k'] =
	unicode: 'k'
	glyphName: 'k'
	characterName: 'LATIN SMALL LETTER K'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50 + serifWidth
		spacingRight: 50 * spacing + 30 + ( 18 / 65 ) * serifWidth
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
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: ascenderHeight + overshoot - Math.max( 0, serifHeight * serifArc ) - ( Math.sin( (15 * spurHeight) / 180 * Math.PI ) * ( thickness ) )
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: ( 255 / 450 ) * xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 30 / 90 ) * thickness * contrast * contrastExtremity * Math.sqrt( width )
						angle: Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].point ) - Math.PI / 2
						distr: 0
					})
				1:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + ( 85 + ( 30 / 80 ) * thickness) + 200 * width + (12),
						contours[0].nodes[1].expandedTo[1].x + 0.1 * contours[1].nodes[1].expand.width + 10
					)
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: (( 45 / 90 ) * thickness) / Math.cos( Math.PI / 2 - Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].point ) ) * contrast * contrastExtremity # * Math.sqrt( width )
						angle: 0 + 'deg'
						distr: 0.1
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[0].x - (15/80) * thickness
					y: 0 + Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						# width: thickness / Math.cos( Math.PI / 2 - Utils.lineAngle( contours[2].nodes[1].point, contours[2].nodes[0].point ) ) # * Math.sqrt( width )
						width: ( thickness ) / Math.cos( Utils.lineAngle( { x: contours[0].nodes[1].expandedTo[0].x + 185 + 200 * width + (0.25 * thickness), y: contours[2].nodes[0].y }, contours[2].nodes[1].point ) )
						angle: 180 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[1].nodes[0].expandedTo[0].x
					y: Math.min(
						contours[1].nodes[0].y - ( 15 / 80 ) * thickness * contrast * contrastExtremity,
						contours[1].nodes[0].expandedTo[0].y
					)
					typeOut: 'line'
					expand: Object({
						width: ( 75 / 80 ) * thickness * Math.sqrt( width )
						angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point )
						distr: 0
					})
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
					typeOut: 'line'
				1:
					x: contours[2].nodes[1].expandedTo[1].x
					y: contours[2].nodes[1].expandedTo[1].y
					typeOut: 'line'
				2:
					x: contours[2].nodes[1].expandedTo[0].x
					y: contours[2].nodes[1].expandedTo[0].y
					typeOut: 'line'
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
			parentParameters:
				serifWidth: Math.min( ( 70 / 65 ) * serifWidth, serifWidth + 5 )
		2:
			base: ['spur-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0].point
					noneAnchor: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					reversed: true
					rotate: -15 * spurHeight
			transformOrigin: contours[0].nodes[1].expandedTo[0].point
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'translateY', - ( Math.sin( (15 * spurHeight) / 180 * Math.PI ) * ( thickness ) ) ]
			)
			parentParameters:
				serifHeight: Math.min( ( 85 / 50 ) * serifHeight, serifHeight + 35 )
				serifMedian: Math.max( ( 0.20 ) * serifMedian, serifMedian - 0.8 )
		3:
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
				serifWidth: Math.max( ( 25 / 65 ) * serifWidth, serifWidth - 40 )
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
				serifWidth: Math.min( ( 125 / 65 ) * serifWidth, serifWidth + 60 )
				serifHeight: Math.min( ( 60 / 50 ) * serifHeight, serifHeight + 10 )
		5:
			base: ['none', 'serif-oblique-acute']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[0].point
					noneAnchor: contours[2].nodes[0].expandedTo[0].point
					opposite: contours[2].nodes[0].expandedTo[1].point
					obliqueEndPoint: contours[2].nodes[1].expandedTo[0].point
			transformOrigin: contours[2].nodes[0].expandedTo[0].point
			parentParameters:
				serifWidth: Math.max( ( 10 / 65 ) * serifWidth, serifWidth - 55 )
				serifMedian: Math.min( ( 1.20 / 0.35 ) * serifMedian, serifMedian + 0.85 )
		6:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[1].point
					noneAnchor: contours[2].nodes[0].expandedTo[1].point
					opposite: contours[2].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[2].nodes[1].expandedTo[1].point
					scaleX: -1
					reversed: true
			transformOrigin: contours[2].nodes[0].expandedTo[1].point
			parentParameters:
				serifWidth: Math.max( ( 35 / 65 ) * serifWidth, serifWidth - 30 )
