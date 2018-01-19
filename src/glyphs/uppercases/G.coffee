exports.glyphs['G_cap'] =
	unicode: 'G'
	glyphName: 'G'
	characterName: 'LATIN CAPITAL LETTER G'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 70
		spacingRight: 50 * spacing + 50 + ( 70 / 65 ) * serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: (contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5) + ( contours[0].nodes[1].expandedTo[0].x - ( (contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5) )) * 0.5
			y: capHeight + ( 45 / 80 ) * diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 370 + 200 * width - (7),
						contours[0].nodes[2].expandedTo[1].x + 0.25 * ( 74 / 80 ) * thickness + 10
					)
					y: Math.min(
						capHeight - 42 - ( 150 * aperture * apertureTop - 150 ),
						capHeight
					)
					dirOut: Math.min(
						contours[0].nodes[0].expand.angle + Math.PI + Math.PI / 2,
						Utils.lineAngle({x: contours[0].nodes[0].expandedTo[1].x, y: contours[0].nodes[0].expandedTo[1].y}, {x: contours[0].nodes[1].expandedTo[0].x, y: contours[0].nodes[1].expandedTo[0].y})
					)
					expand:
						width: ( 75 / 80 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: Math.min(
							Math.max(
								- 130 - ( 50 * aperture * apertureTop - 50 ),
								- 180 - 10
							),
							- 90
						) / 180 * Math.PI
						distr: 0.1
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 355 / 570 )
					y: capHeight + overshoot
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 50 / 80 ) * thickness * opticThickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				2:
					x: spacingLeft + (23/80) * thickness * opticThickness
					y: ( 310 / 660 ) * capHeight + (8)
					dirIn: Math.PI / 2
					typeOut: 'smooth'
					expand:
						width: ( 98 / 80 ) * thickness * opticThickness
						angle:( 18 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 330 / 580 )
					y: - overshoot
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: ( 65 / 80 ) * thickness * opticThickness * contrast
						angle: 65 / 180 * Math.PI
						distr: 0
				4:
					x: contours[0].nodes[0].expandedTo[0].x + 10
					y: Math.max(
						75 + ( 150 * aperture * apertureBottom - 150 ),
						contours[0].nodes[3].y + contours[0].nodes[3].expand.width * contours[0].nodes[3].expand.angle + 10
					)
					dirIn: Math.max(
						contours[0].nodes[4].expand.angle - Math.PI / 2 - 30 / 180 * Math.PI,
						Math.PI + Utils.lineAngle({x: contours[0].nodes[4].expandedTo[1].x, y: contours[0].nodes[4].expandedTo[1].y}, {x: contours[0].nodes[3].expandedTo[0].x, y: contours[0].nodes[3].expandedTo[0].y})
					)
					typeOut: 'smooth'
					expand:
						width: ( 62 / 80 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: Math.max(
							Math.min(
								170 + ( 50 * aperture * apertureBottom - 50 ),
								180 + 10
							),
							90
						) / 180 * Math.PI
						distr: 0.1
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[4].expandedTo[0].x
					y: contours[0].nodes[4].expandedTo[0].y
					typeOut: 'line'
					expand:
						width: (90 / 80) * thickness * opticThickness / Math.cos (Math.PI + Utils.lineAngle({x: contours[0].nodes[4].expandedTo[0].x, y: contours[0].nodes[4].expandedTo[0].y}, {x: contours[0].nodes[3].expandedTo[1].x, y: contours[0].nodes[3].expandedTo[1].y}))
						angle: Utils.lineAngle({x: contours[0].nodes[4].expandedTo[0].x, y: contours[0].nodes[4].expandedTo[0].y}, {x: contours[0].nodes[3].expandedTo[1].x, y: contours[0].nodes[3].expandedTo[1].y})
						distr: 0
				1:
					x: contours[1].nodes[0].expandedTo[0].x
					y: ( 290 / 660 ) * capHeight * crossbar
					expand:
						width: ( 90 / 80 ) * thickness * opticThickness
						angle: Math.PI
						distr: 0
	components:
		0:
			base: ['serif-curve-inside-auto', 'none']
			id: 'topbottom'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[0].expandedTo[1]
					baseHeight: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					curveEnd: contours[0].nodes[1].expandedTo[1]
					rotationAngle: 15
					rotationCenter: contours[0].nodes[0].expandedTo[0]
					down: true
					inverseOrder: true
			parameters:
				serifRotate: Math.max( serifRotate, serifRotate + 0.15 )
				serifWidth: Math.min( ( 115 / 65 ) * serifWidth, serifWidth + 50 )
				serifHeight: Math.min( ( 75 / 50 ) * serifHeight, serifHeight + 25 )
				serifMedian: Math.max( 0.23 * serifMedian, serifMedian - 0.12 )
				serifCurve: Math.max( serifCurve, ( 10 / 80 ) * thickness )
		1:
			base: ['none', 'serif-curve-inside-auto']
			id: 'toptop'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[0].expandedTo[0]
					baseHeight: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					curveEnd: contours[0].nodes[1].expandedTo[0]
					rotationAngle: 15
					rotationCenter: contours[0].nodes[0].expandedTo[0]
			parameters:
				serifRotate: Math.max( serifRotate, serifRotate + 0.25 )
		2:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min( ( 85 / 65 ) * serifWidth, serifWidth + 20 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		3:
			base: ['serif-vertical', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
			transformOrigin: contours[1].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min( ( 75 / 65 ) * serifWidth, serifWidth + 10 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
