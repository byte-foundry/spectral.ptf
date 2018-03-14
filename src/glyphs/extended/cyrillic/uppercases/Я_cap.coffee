exports.glyphs['Я_cap'] =
	unicode: 'Я'
	glyphName: 'Я'
	characterName: 'CYRILLIC CAPITAL LETTER Я'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 35 + ( 35 / 65 ) * serifWidth
		spacingRight: 50 * spacing + 65 + ( 80 / 65 ) * serifWidth
	tags: [
		'all',
		'cyrillic',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (25/80) * thickness * opticThickness
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( ( 83 / 80 ) * thickness * opticThickness ) / Math.sin( Utils.lineAngle(
						        { x: spacingLeft + (25/80) * thickness * opticThickness + + 0.75 * ( 102 / 80 ) * thickness * opticThickness, y: 0 },
						        { x: spacingLeft + (25/80) * thickness * opticThickness + + 0.75 * ( 102 / 80 ) * thickness * opticThickness + 144 + 50 * width + 80 - thickness, y: ( 283 / 660 ) * capHeight * crossbar + (41) }
						    ) )
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 144 + 50 * width + 80 - thickness
					y: contours[1].nodes[4].expandedTo[0].y
					typeIn: 'line'
					expand:
						width: thickness
						angle: Math.max(
							Utils.lineAngle(
							        { x: contours[0].nodes[0].x, y: contours[0].nodes[0].y },
							        { x: contours[0].nodes[1].x, y: contours[0].nodes[1].y }
							    ) - Math.PI / 2 - ( ( 50 * width * contrast - 50 ) / 180 ) * Math.PI,
							Utils.lineAngle(
							        { x: contours[1].nodes[2].expandedTo[0].x, y: contours[1].nodes[2].expandedTo[0].y },
							        { x: contours[0].nodes[1].x, y: contours[0].nodes[1].y }
							    )
						)
						distr: 1
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[2].nodes[1].expandedTo[1].x
					y: contours[2].nodes[1].expandedTo[1].y
					typeOut: 'line'
					expand:
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: - Math.PI / 2
						distr: 0
				1:
					x: Math.min(
						contours[1].nodes[3].x + 32,
						contours[2].nodes[1].expandedTo[1].x + 40
					)
					y: contours[2].nodes[1].expandedTo[1].y
					typeIn: 'line'
					dirOut: Math.PI
					tensionOut: 1.2
					expand:
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: - Math.PI / 2
						distr: 0
				2:
					x: contours[0].nodes[0].expandedTo[0].x + 47 + (24)
					y: contours[1].nodes[4].expandedTo[0].y + ( contours[1].nodes[0].expandedTo[0].y - contours[1].nodes[4].expandedTo[0].y ) * ( 188 / 377 )
					dirOut: - Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 97 / 80 ) * thickness * opticThickness
						angle: ( 2 / 180 ) * Math.PI
						distr: 0.25
				3:
					x: Math.min(
						contours[0].nodes[1].x,
						contours[2].nodes[1].expandedTo[1].x
					)
					y: ( 283 / 660 ) * capHeight * crossbar + (41)
					dirIn: Math.PI
					typeOut: 'line'
					expand:
						width: ( 60 / 80 ) * thickness * opticThickness * contrast
						angle: ( 66 / 180 ) * Math.PI
						distr: 0.75
				4:
					x: contours[2].nodes[1].expandedTo[1].x
					y: contours[1].nodes[3].expandedTo[0].y
					typeIn: 'line'
					expand:
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 281 + 200 * width - (22),
						contours[1].nodes[2].x + 0.75 * ( 97 / 80 ) * thickness * opticThickness + 0.75 * ( 90 / 80 ) * thickness * opticThickness + 10 * 3
					)
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 90 / 80 ) * thickness * opticThickness
						angle: Math.PI
						distr: 0.25
				1:
					x: contours[2].nodes[0].x
					y: capHeight
					typeIn: 'line'
					expand:
						width: ( 90 / 80 ) * thickness * opticThickness
						angle: Math.PI
						distr: 0.25
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0]
			parameters:
				serifWidth: Math.max( ( 50 / 65 ) * serifWidth, serifWidth - 15 )
		1:
			base: ['none', 'serif-oblique-acute']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1]
					scaleX: -1
					reversed: true
			parameters:
				serifWidth: Math.min( ( 130 / 65 ) * serifWidth, serifWidth + 65 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		2:
			base: ['serif-vertical', 'none']
			id: 'bottomleft2'
			class: 'lowerRightInsideStump'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[1]
					noneAnchor: contours[2].nodes[0].expandedTo[1]
					opposite: contours[2].nodes[0].expandedTo[0]
			parameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		3:
			base: ['serif-vertical', 'none']
			id: 'bottomright2'
			class: 'lowerRightStump'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[0]
					noneAnchor: contours[2].nodes[0].expandedTo[0]
					opposite: contours[2].nodes[0].expandedTo[1]
					reversed: true
			transformOrigin: contours[2].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
			parameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		4:
			base: ['serif-vertical', 'none']
			id: 'topright2'
			class: 'upperRightStump'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0]
					noneAnchor: contours[2].nodes[1].expandedTo[0]
					opposite: contours[2].nodes[1].expandedTo[1]
			transformOrigin: contours[2].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
