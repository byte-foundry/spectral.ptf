exports.glyphs['f'] =
	unicode: 'f'
	glyphName: 'f'
	characterName: 'LATIN SMALL LETTER F'
	ot:
		advanceWidth: contours[1].nodes[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
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
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: xHeight + ( 40 / 300 ) * ascender
					typeIn: 'line'
					dirOut: Math.PI / 2
					tensionOut: 0.8
					expand:
						width: ( 126 / 80 ) * thickness
						angle:( 50 ) / 180 * Math.PI
						distr: 0
				2:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * ( 230 / 265 )
					y: ascenderHeight
					dirIn: Math.PI
					tensionIn: 0.8
					typeOut: 'line'
					expand:
						width: ( 50 / 80 ) * thickness * contrast
						angle:( - 125 ) / 180 * Math.PI
						distr: 0
				3:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 65 + 200 * width,
						contours[0].nodes[1].expandedTo[1].x + thickness + 10
					)
					y: ascenderHeight - 10
					typeIn: 'line'
					expand:
						width: ( 88 / 80 ) * thickness * contrast
						angle:( - 110 ) / 180 * Math.PI
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: xHeight
					typeOut: 'line'
					expand:
						width: ( 47 / 80 ) * thickness * contrast * contrastExtremity
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 132 * width
					y: xHeight
					typeOut: 'line'
					expand:
						width: ( 47 / 80 ) * thickness * contrast * contrastExtremity
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[3].expandedTo[1].x
					y: contours[0].nodes[3].expandedTo[1].y
					dirOut:( 155 ) / 180 * Math.PI
					typeIn: 'line'
				1:
					x: Utils.onLine({
						y: contours[2].nodes[0].y + 10
						on: [ contours[0].nodes[2].expandedTo[0], contours[0].nodes[2].expandedTo[1] ]
					}) + 10
					y: contours[2].nodes[0].y + 10
					dirIn: 0
					type: 'smooth'
				2:
					x: contours[0].nodes[1].expandedTo[1].x
					y: Math.min(
						contours[0].nodes[1].expandedTo[1].y,
						contours[2].nodes[0].y - 10
					)
					dirIn: Math.PI / 2
					dirOut: Math.PI / 2
					tensionOut: 0.8
					tensionIn: 0.8
				3:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirIn: Math.PI / 2
					dirOut: Math.PI / 2
					tensionOut: 0.8
					tensionIn: 0.8
				4:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y
					dirIn: Math.PI
					typeOut: 'line'
				5:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[2].expandedTo[0].y
					typeOut: 'line'
					typeIn: 'line'
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[3].expandedTo[0].x
					y: contours[0].nodes[3].expandedTo[0].y
					dirOut:( - 25 ) / 180 * Math.PI
					typeIn: 'line'
				1:
					x: contours[0].nodes[3].expandedTo[0].x + 28
					y: Math.max(
						contours[0].nodes[3].expandedTo[0].y - 28,
						contours[3].nodes[3].y
					)
					dirIn: Math.PI / 2
					typeOut: 'smooth'
				2:
					x: contours[3].nodes[1].x - 4
					y: contours[3].nodes[1].y - 18
					y: Math.max(
						contours[3].nodes[1].y - 18,
						contours[3].nodes[3].y
					)
					typeOut: 'line'
					typeIn: 'smooth'
				3:
					x: contours[0].nodes[3].expandedTo[1].x + 34
					y: contours[0].nodes[3].expandedTo[1].y - 11
					typeOut: 'line'
					typeIn: 'line'
				4:
					x: contours[3].nodes[3].x - 7
					y: contours[3].nodes[3].y
					typeOut: 'line'
					typeIn: 'line'
				5:
					x: contours[0].nodes[3].expandedTo[1].x
					y: contours[0].nodes[3].expandedTo[1].y
					dirIn:( - 25 ) / 180 * Math.PI
					typeOut: 'line'
				6:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[2].expandedTo[0].y
					dirOut: 0
					typeIn: 'line'
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class: 'lowerLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			class: 'lowerRightStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
			parentParameters:
				serifWidth: Math.min( ( 70 / 65 ) * serifWidth, serifWidth + 5 )
