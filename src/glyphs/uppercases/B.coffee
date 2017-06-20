exports.glyphs['B_cap'] =
	unicode: 'B'
	glyphName: 'B'
	characterName: 'LATIN CAPITAL LETTER B'
	ot:
		advanceWidth: contours[2].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 65 + ( 80 / 65 ) * serifWidth
		spacingRight: 50 * spacing + 50
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
					x: contours[1].nodes[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[0].x ) * ( 145 / 367 )
					y: contours[0].nodes[1].y
					dirOut: 0 + 'deg'
					tensionOut: 1.1
					expand: Object({
						width: ( 60 / 80 ) * thickness * opticThickness * contrast
						angle: - 112 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 204 + 200 * width - (23),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 97 / 80 ) * thickness * opticThickness + 10
					)
					y: contours[1].nodes[3].expandedTo[0].y + ( contours[1].nodes[0].expandedTo[0].y - contours[1].nodes[3].expandedTo[0].y ) * ( 164 / 312 ) - (5)
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 97 / 80 ) * thickness * opticThickness
						angle: - 165 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[2].nodes[1].expandedTo[0].x - (36)
					y: contours[2].nodes[0].expandedTo[0].y
					dirIn: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 45 / 80 ) * thickness * opticThickness * contrast
						angle: 63 + 'deg'
						distr: 1
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x - ( 45 / 80 ) * thickness * opticThickness
					y: ( 313 / 660 ) * capHeight * crossbar + (27)
					typeOut: 'line'
					expand: Object({
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0.5
					})
				1:
					x: Math.max(
						contours[2].nodes[0].x + ( contours[2].nodes[2].expandedTo[0].x - contours[2].nodes[0].x ) * ( 145 / 415 ),
						contours[0].nodes[0].expandedTo[1].x
					)
					# x: contours[0].nodes[0].expandedTo[0].x
					y: contours[2].nodes[0].expandedTo[1].y
					dirOut: 0 + 'deg'
					tensionOut: 1.1
					expand: Object({
						width: ( 64 / 80 ) * thickness * opticThickness * contrast
						angle: 180 + 120 + 'deg'
						distr: 1
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 260 + 200 * width - (22),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 94 / 80 ) * thickness * opticThickness + 10
					)
					y: contours[2].nodes[4].expandedTo[0].y + ( contours[2].nodes[0].expandedTo[0].y - contours[2].nodes[4].expandedTo[0].y ) * ( 192 / 368 )
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 94 / 80 ) * thickness * opticThickness
						angle: - 175 + 'deg'
						distr: 0.25
					})
				3:
					x: Math.max(
						contours[2].nodes[4].x + ( contours[2].nodes[2].expandedTo[0].x - contours[2].nodes[4].x ) * ( 131 / 396 ),
						contours[0].nodes[0].expandedTo[1].x
					)
					y: 0
					dirIn: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].expandedTo[1].x - ( 45 / 80 ) * thickness * opticThickness
					y: 0
					expand: Object({
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
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
