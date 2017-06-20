exports.glyphs['R'] =
	unicode: 'R'
	glyphName: 'R'
	characterName: 'LATIN CAPITAL LETTER R'
	ot:
		advanceWidth: contours[2].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 65 + ( 80 / 65 ) * serifWidth
		spacingRight: 50 * spacing + ( 50 / 65 ) * serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + ( 45 / 80 ) * diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (22/80) * thickness * opticThickness
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 90 / 80 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: ( 90 / 80 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x - ( 45 / 80 ) * thickness * opticThickness
					y: contours[0].nodes[1].y
					typeOut: 'line'
					expand: Object({
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: Math.max(
						contours[1].nodes[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[0].x ) * ( 145 / 367 ),
						contours[1].nodes[0].expandedTo[1].x
					)
					y: contours[0].nodes[1].y
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 60 / 80 ) * thickness * opticThickness * contrast
						angle: - 112 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 205 + 200 * width - (45),
						contours[0].nodes[0].expandedTo[1].x + 0.5 * ( 98 / 80 ) * thickness * opticThickness + 10
					)
					y: contours[1].nodes[4].expandedTo[0].y + ( contours[1].nodes[0].expandedTo[0].y - contours[1].nodes[4].expandedTo[0].y ) * ( 190 / 370 ) - (5)
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 98 / 80 ) * thickness * opticThickness
						angle: - 175 + 'deg'
						distr: 0.5
					})
				3:
					x: contours[1].nodes[1].expandedTo[0].x - 15
					y: contours[1].nodes[4].expandedTo[0].y
					dirIn: 0 + 'deg'
					typeOut: 'line'
					tensionIn: 0.7
					expand: Object({
						width: ( 64 / 80 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2 + Math.acos( (( 55 / 80 ) * thickness * opticThickness * contrast) / (( 64 / 80 ) * thickness * opticThickness * contrast))
						distr: 0
					})
				4:
					x: contours[0].nodes[1].expandedTo[1].x - ( 25 / 80 ) * thickness * opticThickness
					y: ( 330 / 660 ) * capHeight * crossbar
					expand: Object({
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0.5
					})
		2:
			skeleton: true
			closed: false
			reversed: true
			nodes:
				0:
					x: Math.min(
						contours[1].nodes[3].expandedTo[0].x - thickness + 80,
						contours[1].nodes[3].expandedTo[1].x
					)
					y: contours[1].nodes[3].expandedTo[0].y
					typeOut: 'line'
					expand: Object({
						width: 90 / 80 * thickness
						angle: Math.min(
							Math.PI + Utils.lineAngle( contours[2].nodes[1].expandedTo[1].point, contours[2].nodes[0].point ) - Math.PI / 2,
							Utils.lineAngle( contours[1].nodes[2].expandedTo[0].point, contours[1].nodes[3].expandedTo[0].point )
						)
						distr: 1
					})
				1:
					x: contours[1].nodes[2].expandedTo[1].x + (65)
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: (( 90 / 80 ) * thickness ) / Math.sin( Math.PI - Utils.lineAngle( contours[2].nodes[1].point, contours[2].nodes[0].point ) )
						angle: 180 + 'deg'
						distr: 1
					})
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
			parentParameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
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
				serifWidth: Math.min( ( 75 / 65 ) * serifWidth, serifWidth + 10 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		2:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0].point
					noneAnchor: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					reversed: true
			transformOrigin: contours[0].nodes[1].expandedTo[1].point
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		3:
			base: ['serif-oblique-obtuse', 'none']
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
				serifWidth: Math.max( ( 50 / 65 ) * serifWidth, serifWidth - 15 )
