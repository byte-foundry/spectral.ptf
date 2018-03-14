exports.glyphs['Ѵ_cap'] =
	unicode: 'Ѵ'
	glyphName: 'Ѵ'
	characterName: 'CYRILLIC CAPITAL LETTER Ѵ'
	ot:
		advanceWidth: contours[3].nodes[2].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 35 + ( 47 / 65 ) * serifWidth
		spacingRight: 50 * spacing + 35 + ( 37 / 65 ) * serifWidth
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
					x: spacingLeft + (22/80) * thickness * opticThickness
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: Math.max(
							( 93 / 80 ) * thickness * opticThickness,
							thickness * opticThickness / (- Math.sin(Utils.lineAngle({x: contours[0].nodes[0].x, y: contours[0].nodes[0].y}, {x: contours[0].nodes[1].x, y: contours[0].nodes[1].y})))
						)
						angle: 0
						distr: 0.25
				1:
					x: contours[1].nodes[2].expandedTo[0].x
					y: contours[1].nodes[2].expandedTo[0].y
					typeIn: 'line'
					expand:
						width: thickness * opticThickness + Math.min( 45, ( 45 / 80 ) * thickness * opticThickness )
						angle: Utils.lineAngle({x: contours[1].nodes[1].x, y: contours[1].nodes[1].y}, {x: contours[1].nodes[2].x, y: contours[1].nodes[2].y}) + Math.PI - ((2/80) * thickness * opticThickness / 180*Math.PI)
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[1].x + 116
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: Math.PI
					expand:
						width: ( 90 / 80 ) * thickness * opticThickness * contrast
						angle: - ( 76 / 180 ) * Math.PI
						distr: 0
				1:
					x: Math.max(
						spacingLeft + 305 + 200 * width - (16),
						spacingLeft + 0.75 * ( 67 / 80 ) * thickness * opticThickness + 10
					)
					y: capHeight - ( ( 108 + thickness ) / 660 ) * capHeight
					typeOut: 'line'
					type: 'smooth'
					expand:
						width: ( 67 / 80 ) * thickness * opticThickness * contrast
						angle: 0
						distr: 0.75
				2:
					x: contours[0].nodes[0].x + ( contours[1].nodes[0].x - contours[0].nodes[0].x ) * 0.5
					y: - overshoot / 2
					typeIn: 'line'
					expand:
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: Utils.lineAngle({x: contours[1].nodes[1].x, y: contours[1].nodes[1].y}, {x: contours[1].nodes[2].x, y: contours[1].nodes[2].y}) + Math.PI / 2
						distr: 1
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[2].x
					y: contours[1].nodes[2].expandedTo[1].y
					typeIn: 'line'
					typeOut: 'line'
				1:
					x: Math.min(
						Utils.onLine({
							y: - overshoot / 2
							on: [ contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0] ]
						}),
						contours[1].nodes[2].expandedTo[1].x
					)
					y: contours[1].nodes[2].expandedTo[1].y
					typeIn: 'line'
					typeOut: 'line'
				2:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					typeIn: 'line'
					typeOut: 'line'
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
					dirOut: 0
					typeIn: 'line'
				1:
					x: contours[3].nodes[2].x
					y: contours[3].nodes[4].y + ( contours[3].nodes[0].y - contours[3].nodes[4].y ) * ( 59 / 88 )
					dirIn: Math.PI / 2
					typeOut: 'line'
				2:
					x: contours[3].nodes[3].x + Math.min( 4, ( 4 / 80 ) * thickness * opticThickness )
					y: contours[3].nodes[3].y + Math.min( 4, ( 4 / 80 ) * thickness * opticThickness )
					typeOut: 'line'
					typeIn: 'line'
				3:
					x: contours[1].nodes[0].expandedTo[1].x + Math.min( 10, ( 10 / 80 ) * thickness * opticThickness )
					y: contours[1].nodes[0].expandedTo[1].y
					typeOut: 'line'
					typeIn: 'line'
				4:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					typeOut: 'line'
					typeIn: 'line'
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft'
			class: 'leftObtuseSerif'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0]
					scaleX: -1
					reversed: true
			parameters:
				serifWidth: Math.max( ( 55 / 65 ) * serifWidth, serifWidth - 10 )
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'topright'
			class: 'leftAcuteSerif'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1]
			parameters:
				serifWidth: Math.min( ( 110 / 65 ) * serifWidth, serifWidth + 45 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
