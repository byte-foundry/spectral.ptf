exports.glyphs['R_cap'] =
	unicode: 'R'
	glyphName: 'R'
	characterName: 'LATIN CAPITAL LETTER R'
	ot:
		advanceWidth: contours[2].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
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
					expand:
						width: ( 90 / 80 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: ( 90 / 80 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x - ( 45 / 80 ) * thickness * opticThickness
					y: contours[0].nodes[1].y
					typeOut: 'line'
					expand:
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: Math.max(
						contours[1].nodes[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[0].x ) * ( 145 / 367 ),
						contours[1].nodes[0].expandedTo[1].x
					)
					y: contours[0].nodes[1].y
					dirOut: 0
					expand:
						width: ( 59 / 80 ) * thickness * opticThickness * contrast
						angle:( - 112 ) / 180 * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 205 + 200 * width - (45),
						contours[0].nodes[0].expandedTo[1].x + 0.5 * ( 98 / 80 ) * thickness * opticThickness + 50
					)
					y: contours[1].nodes[4].expandedTo[0].y + ( contours[1].nodes[0].expandedTo[0].y - contours[1].nodes[4].expandedTo[0].y ) * ( 190 / 370 ) - (5)
					dirIn: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 98 / 80 ) * thickness * opticThickness
						angle:( - 175 ) / 180 * Math.PI
						distr: 0.5
				3:
					x: contours[1].nodes[1].expandedTo[0].x - 25
					y: contours[1].nodes[4].expandedTo[0].y
					dirIn: 0
					typeOut: 'line'
					expand:
						width: ( 58 / 80 ) * thickness * opticThickness * contrast
						angle:( 70 ) / 180 * Math.PI
						distr: 0
				4:
					x: contours[0].nodes[1].expandedTo[1].x - ( 25 / 80 ) * thickness * opticThickness
					y: ( 290 / 660 ) * capHeight * crossbar + (27)
					typeIn: 'line'
					expand:
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0.5
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
					expand:
						width: 90 / 80 * thickness
						angle: Math.min(
							Math.PI + Utils.lineAngle({x: contours[2].nodes[1].expandedTo[1].x, y: contours[2].nodes[1].expandedTo[1].y}, {x: contours[2].nodes[0].x, y: contours[2].nodes[0].y}) - Math.PI / 2,
							Utils.lineAngle({x: contours[1].nodes[2].expandedTo[0].x, y: contours[1].nodes[2].expandedTo[0].y}, {x: contours[1].nodes[3].expandedTo[0].x, y: contours[1].nodes[3].expandedTo[0].y})
						)
						distr: 1
				1:
					x: contours[1].nodes[2].expandedTo[1].x + (65)
					y: Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: ((90 / 80) * thickness) / Math.sin(Math.PI - Utils.lineAngle({x: contours[2].nodes[1].x, y: contours[2].nodes[1].y}, {x: contours[2].nodes[0].x, y: contours[2].nodes[0].y}))
						angle: Math.PI
						distr: 1
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
			parameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			class: 'lowerLeftInsideStump'
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
			parameters:
				serifWidth: Math.min( ( 75 / 65 ) * serifWidth, serifWidth + 10 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		2:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0]
					noneAnchor: contours[2].nodes[1].expandedTo[0]
					opposite: contours[2].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[2].nodes[0].expandedTo[0]
					scaleX: -1
					reversed: true
			parameters:
				serifWidth: Math.max( ( 50 / 65 ) * serifWidth, serifWidth - 15 )
