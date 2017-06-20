exports.glyphs['f'] =
	unicode: 'f'
	glyphName: 'f'
	characterName: 'LATIN SMALL LETTER F'
	ot:
		advanceWidth: contours[1].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 35
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
					x: contours[1].nodes[0].x + 100 * width
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: xHeight + ( 40 / 300 ) * ascender
					dirOut: 90 + 'deg'
					tensionOut: 0.8
					expand: Object({
						width: ( 126 / 80 ) * thickness
						angle: 50 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * ( 230 / 265 )
					y: ascenderHeight
					dirIn: 180 + 'deg'
					tensionIn: 0.8
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 80 ) * thickness * contrast
						angle: - 125 + 'deg'
						distr: 0
					})
				3:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 65 + 200 * width,
						contours[0].nodes[1].expandedTo[1].x + thickness + 10
					)
					y: ascenderHeight - 10
					expand: Object({
						width: ( 88 / 80 ) * thickness * contrast
						angle: - 110 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 47 / 80 ) * thickness * contrast * contrastExtremity
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 132 * width
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 47 / 80 ) * thickness * contrast * contrastExtremity
						angle: - 90 + 'deg'
						distr: 0
					})
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[3].expandedTo[1].x
					y: contours[0].nodes[3].expandedTo[1].y
					dirOut: 155 + 'deg'
					# dirOut: Utils.lineAngle( contours[0].nodes[3].expandedTo[1].point, contours[0].nodes[2].expandedTo[1].point )
					# typeOut: 'line'
				1:
					x: Utils.onLine({
						y: contours[2].nodes[0].y + 10
						on: [ contours[0].nodes[2].expandedTo[0].point, contours[0].nodes[2].expandedTo[1].point ]
					}) + 10
					y: contours[2].nodes[0].y + 10
					dirIn: 0 + 'deg'
					type: 'smooth'
				2:
					x: contours[0].nodes[1].expandedTo[1].x
					y: Math.min(
						contours[0].nodes[1].expandedTo[1].y,
						contours[2].nodes[0].y - 10
					)
					dirIn: 90 + 'deg'
					dirOut: 90 + 'deg'
					tensionOut: 0.8
					tensionIn: 0.8
				3:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirIn: 90 + 'deg'
					dirOut: 90 + 'deg'
					tensionOut: 0.8
					tensionIn: 0.8
				4:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y
					dirIn: 180 + 'deg'
					typeOut: 'line'
				5:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[2].expandedTo[0].y
					typeOut: 'line'
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[3].expandedTo[0].x
					y: contours[0].nodes[3].expandedTo[0].y
					dirOut: - 25 + 'deg'
					type: 'smooth'
				1:
					x: contours[0].nodes[3].expandedTo[0].x + 28
					y: Math.max(
						contours[0].nodes[3].expandedTo[0].y - 28,
						contours[3].nodes[3].y
					)
					dirIn: 90 + 'deg'
					type: 'smooth'
				2:
					x: contours[3].nodes[1].x - 4
					y: contours[3].nodes[1].y - 18
					y: Math.max(
						contours[3].nodes[1].y - 18,
						contours[3].nodes[3].y
					)
					typeOut: 'line'
					type: 'smooth'
				3:
					x: contours[0].nodes[3].expandedTo[1].x + 34
					y: contours[0].nodes[3].expandedTo[1].y - 11
					typeOut: 'line'
				4:
					x: contours[3].nodes[3].x - 7
					y: contours[3].nodes[3].y
					typeOut: 'line'
					type: 'smooth'
				5:
					x: contours[0].nodes[3].expandedTo[1].x
					y: contours[0].nodes[3].expandedTo[1].y
					dirIn: - 25 + 'deg'
					typeOut: 'line'
				6:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[2].expandedTo[0].y
					dirOut: 0 + 'deg'
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
