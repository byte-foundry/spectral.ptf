exports.glyphs['a_alt'] =
	unicode: 'a'
	glyphName: 'a'
	characterName: 'LATIN SMALL LETTER A'
	altImg: 'alt-spectral-a-1.svg'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 48
		spacingRight: 50 * spacing + 48 + ( 70 / 65 ) * serifWidth
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[2].expandedTo[1].x + thickness + 90 + (20)
			y: xHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 70 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 1
					})
				1:
					x: Math.max(
						contours[1].nodes[2].expandedTo[0].x + 208 + 200 * width - (20),
						contours[1].nodes[2].expandedTo[1].x + 0.25 * thickness + 10
					)
					y: contours[1].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				2:
					x: contours[0].nodes[1].x
					y: xHeight - ( 20 / 450 ) * xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				3:
					x: contours[0].nodes[2].expandedTo[1].x
					y: xHeight + overshoot
					expand: Object({
						width: ( 10 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[0].x + ( 10 / 80 ) * thickness
					y: Math.min( 140, ( 140 / 450 ) * xHeight )
					dirOut: Math.max(
						- 140 / 180 * Math.PI,
						Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ) + 30 / 180 * Math.PI
					)
					type: 'smooth'
					expand: Object({
						width: ( 35 / 80 ) * thickness * contrast * contrastExtremity
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[0].x - contours[1].nodes[2].expandedTo[0].x ) * ( 175 / 340 )
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 88 / 80 ) * thickness * contrast
						angle: 50 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + (20/80) * thickness
					y: contours[1].nodes[1].y + ( contours[1].nodes[3].y - contours[1].nodes[1].y ) * ( 204 / 470 ) + (6)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 83 / 80 ) * thickness
						angle: 18 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[1].nodes[4].expandedTo[0].x - contours[1].nodes[2].expandedTo[0].x ) * ( 240 / 390 )
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 50 / 80 ) * thickness * contrast
						angle: - 105 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[2].expandedTo[0].x + ( 60 / 80 ) * thickness
					y: xHeight - ( 20 / 450 ) * xHeight
					dirIn: Utils.lineAngle( contours[1].nodes[4].expandedTo[1].point, contours[1].nodes[3].expandedTo[1].point ) - 10 / 180 * Math.PI
					type: 'smooth'
					expand: Object({
						width: ( 65 / 80 ) * thickness * contrast * contrastExtremity
						angle: Utils.lineAngle( contours[1].nodes[4].point, contours[1].nodes[1].expandedTo[0].point )
						distr: 0
					})
	components:
		0:
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
