exports.glyphs['a_alt'] =
	unicode: 'a'
	glyphName: 'a'
	characterName: 'LATIN SMALL LETTER A'
	altImg: 'alt-spectral-a-1.svg'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
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
			x: contours[0].nodes[2].expandedTo[1].x - thickness - 90 + (20)
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 70 / 80 ) * thickness
						angle: 0
						distr: 1
				1:
					x: Math.max(
						contours[1].nodes[2].expandedTo[0].x + 208 + 200 * width - (20),
						contours[1].nodes[2].expandedTo[1].x + 0.25 * thickness + 10
					)
					y: contours[1].nodes[0].y
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.75
				2:
					x: contours[0].nodes[1].x
					y: xHeight - ( 20 / 450 ) * xHeight
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.75
				3:
					x: contours[0].nodes[2].expandedTo[1].x
					y: xHeight + overshoot
					typeIn: 'line'
					expand:
						width: ( 10 / 80 ) * thickness
						angle: 0
						distr: 1
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[0].x + ( 10 / 80 ) * thickness
					y: Math.min( 140, ( 140 / 450 ) * xHeight )
					dirOut: Math.max(
						- 140 / 180 * Math.PI,
						Utils.lineAngle({x: contours[1].nodes[0].expandedTo[0].x, y: contours[1].nodes[0].expandedTo[0].y}, {x: contours[1].nodes[1].expandedTo[0].x, y: contours[1].nodes[1].expandedTo[0].y}) + 30 / 180 * Math.PI
					)
					expand:
						width: ( 35 / 80 ) * thickness * contrast * contrastExtremity
						angle: Math.PI / 2
						distr: 0
				1:
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[0].x - contours[1].nodes[2].expandedTo[0].x ) * ( 175 / 340 )
					y: - overshoot
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 88 / 80 ) * thickness * contrast
						angle:( 50 ) / 180 * Math.PI
						distr: 0
				2:
					x: spacingLeft + (20/80) * thickness
					y: contours[1].nodes[1].y + ( contours[1].nodes[3].y - contours[1].nodes[1].y ) * ( 204 / 470 ) + (6)
					dirOut: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 83 / 80 ) * thickness
						angle:( 18 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[1].nodes[4].expandedTo[0].x - contours[1].nodes[2].expandedTo[0].x ) * ( 240 / 390 )
					y: xHeight + overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 50 / 80 ) * thickness * contrast
						angle:( - 105 ) / 180 * Math.PI
						distr: 0
				4:
					x: contours[0].nodes[2].expandedTo[0].x + ( 60 / 80 ) * thickness
					y: xHeight - ( 20 / 450 ) * xHeight
					dirIn: Utils.lineAngle({x: contours[1].nodes[4].expandedTo[1].x, y: contours[1].nodes[4].expandedTo[1].y}, {x: contours[1].nodes[3].expandedTo[1].x, y: contours[1].nodes[3].expandedTo[1].y}) - 10 / 180 * Math.PI
					expand:
						width: ( 65 / 80 ) * thickness * contrast * contrastExtremity
						angle: Utils.lineAngle({x: contours[1].nodes[4].x, y: contours[1].nodes[4].y}, {x: contours[1].nodes[1].expandedTo[0].x, y: contours[1].nodes[1].expandedTo[0].y})
						distr: 0
	components:
		0:
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
