# TODO: use the same translateX system for other serif rotations (double angle)
# TODO: the top curve should be pinched
exports.glyphs['two'] =
	unicode: '2'
	glyphName: 'two'
	characterName: 'DIGIT TWO'
	ot:
		advanceWidth: contours[0].nodes[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 30
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
					x: contours[0].nodes[2].x + 200 + 200 * width
					y: 0
					expand: Object({
						width: ( 82 / 80 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[3].expandedTo[0].x + ( ( ( 82 / 80 ) * thickness * opticThickness ) / Math.tan( Utils.lineAngle( contours[0].nodes[2].expandedTo[1].point, contours[1].nodes[2].expandedTo[0].point ) )  )
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 82 / 80 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + 10
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 25 / 80 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (23/80) * thickness * opticThickness
					y: capHeight - ( 157 / 660 ) * capHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 92 / 80 ) * thickness * opticThickness
						angle: 10 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[1].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[0].expandedTo[0].x ) * ( 230 / 406 )
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 56 / 80 ) * thickness * opticThickness * contrast
						angle: - 123 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[1].nodes[0].expandedTo[0].x + 206 + 200 * width - (23),
						contours[1].nodes[0].expandedTo[1].x + 0.25 * ( 97 / 80 ) * thickness * opticThickness + 10
					)
					y: contours[0].nodes[0].expandedTo[1].y + ( ( capHeight + overshoot - ( Math.sin( 57 / 180 * Math.PI ) * ( 56 / 80 ) * thickness * opticThickness * contrast ) ) - contours[0].nodes[0].expandedTo[1].y ) * ( 411 / 541 )
					dirIn: 90 + 'deg'
					type: 'smooth'
					tensionOut: 2
					expand: Object({
						width: ( 97 / 80 ) * thickness * opticThickness
						angle: - 179 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y
					dirIn: Utils.lineAngle( contours[0].nodes[2].expandedTo[1].point, contours[1].nodes[2].expandedTo[0].point )
					type: 'smooth'
					tensionIn: 1.2
					expand: Object({
						width: ( 50 / 80 ) * thickness * opticThickness * contrast
						angle: (Math.PI / 2) + Math.acos( Math.min( 1, (contours[0].nodes[2].expandedTo[1].y) / (( 50 / 80 ) * thickness * opticThickness * contrast) ) ),
						distr: 1
					})
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
					dirOut: - 90 + 'deg'
				1:
					x: contours[2].nodes[0].x + ( contours[2].nodes[4].x - contours[2].nodes[0].x ) * ( 40 / 90 )
					y: contours[1].nodes[0].expandedTo[0].y - ( 42 / 80 ) * thickness
					typeOut: 'line'
				2:
					x: contours[1].nodes[0].expandedTo[1].x - 5
					y: contours[2].nodes[1].y
					typeOut: 'line'
				3:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[2].nodes[2].y + 5
					typeOut: 'line'
				4:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					typeOut: 'line'
	components:
		0:
			base: ['serif-horizontal', 'none']
			id: 'bottomrighttop'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					reversed: true
					rotate: - 5 * Math.max( serifRotate, serifRotate + 1 )
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'translateX', - ( Math.tan( (- (5 * 2) * Math.max( serifRotate, serifRotate + 1 )) / 180 * Math.PI ) * ( ( 50 / 80 ) * thickness * opticThickness * contrast * 0.5 ) ) ]
			)
			parentParameters:
				serifWidth: Math.min( ( 105 / 65 ) * serifWidth, serifWidth + 35 )
				serifHeight: Math.min( ( 60 / 50 ) * serifHeight, serifHeight + 10 )
		1:
			base: ['serif-horizontal-fake', 'serif-horizontal', 'none' ]
			id: 'bottomrightbottom'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					rotate: 5 * Math.max( serifRotate, serifRotate + 1 )
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'translateX', ( Math.tan( ((5 * 2) * Math.max( serifRotate, serifRotate + 1 )) / 180 * Math.PI ) * ( ( 50 / 80 ) * thickness * opticThickness * contrast * 0.5 ) ) ]
			)
