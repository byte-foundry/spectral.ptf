exports.glyphs['four'] =
	unicode: '4'
	glyphName: 'four'
	characterName: 'DIGIT FOUR'
	ot:
		advanceWidth: contours[0].nodes[2].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 8
		spacingRight: 50 * spacing + 13
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: contours[0].nodes[2].expandedTo[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 20 / 80 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: Utils.onLine({
						y: contours[0].nodes[2].expandedTo[0].y
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[1].nodes[2].expandedTo[1].point ]
					})
					y: contours[0].nodes[2].expandedTo[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 67 / 80 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[0].x + 280 + 200 * width
					y: ( 193 / 660 ) * capHeight * crossbar + (17)
					typeOut: 'line'
					expand: Object({
						width: ( 67 / 80 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[2].expandedTo[1].x
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 20 / 80 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 1
					})
				1:
					x: contours[1].nodes[2].expandedTo[0].x
					y: Utils.onLine({
						x: contours[1].nodes[2].expandedTo[0].x
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[1].nodes[0].expandedTo[0].point ]
					})
					typeOut: 'line'
					expand: Object({
						width: ( 85 / 80 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[0].x + ( contours[0].nodes[2].x - contours[0].nodes[0].x ) * ( 340 / 480 )
					y: 0 + Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 85 / 80 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.75
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 40 / 80 ) * thickness
						angle: Utils.lineAngle( contours[0].nodes[0].expandedTo[1].point, contours[1].nodes[0].expandedTo[0].point ) - Math.PI / 2
						distr: 0
					})
				1:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 80 ) * thickness
						angle: Utils.lineAngle( contours[0].nodes[0].expandedTo[1].point, contours[1].nodes[0].expandedTo[0].point ) - Math.PI / 2
						distr: 0
					})
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[1].nodes[2].expandedTo[0].point
					noneAnchor: contours[1].nodes[2].expandedTo[0].point
					opposite: contours[1].nodes[2].expandedTo[1].point
			parentParameters:
				serifWidth: Math.min( ( 90 / 65 ) * serifWidth, serifWidth + 25 )
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[1].nodes[2].expandedTo[1].point
					noneAnchor: contours[1].nodes[2].expandedTo[1].point
					opposite: contours[1].nodes[2].expandedTo[0].point
					reversed: true
			transformOrigin: contours[1].nodes[2].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
			parentParameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
		2:
			base: ['none', 'serif-horizontal', 'serif-horizontal-fake']
			id: 'middlebottom'
			parentAnchors:
				0:
					base: contours[0].nodes[2].expandedTo[0].point
					noneAnchor: contours[0].nodes[2].expandedTo[0].point
					opposite: contours[0].nodes[2].expandedTo[1].point
					rotate: 10 * serifRotate
			transformOrigin: contours[0].nodes[2].expandedTo[1].point
			parentParameters:
				serifWidth: Math.max( ( 55 / 65 ) * serifWidth, serifWidth - 10 )
			transforms: Array(
				[ 'translateX', ( Math.tan( (10 * serifRotate) / 180 * Math.PI ) * ( ( 67 / 80 ) * thickness * opticThickness * contrast * 0.5 ) ) ]
			)
		3:
			base: ['none', 'serif-horizontal', 'serif-horizontal-fake']
			id: 'middletop'
			parentAnchors:
				0:
					base: contours[0].nodes[2].expandedTo[1].point
					noneAnchor: contours[0].nodes[2].expandedTo[1].point
					opposite: contours[0].nodes[2].expandedTo[0].point
					reversed: true
					rotate: - 10 * serifRotate
			transformOrigin: contours[0].nodes[2].expandedTo[1].point
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'translateX', ( Math.tan( (10 * serifRotate) / 180 * Math.PI ) * ( ( 67 / 80 ) * thickness * opticThickness * contrast * 0.5 ) ) ]
			)
