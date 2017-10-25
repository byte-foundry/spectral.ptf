exports.glyphs['S_cap'] =
	unicode: 'S'
	glyphName: 'S'
	characterName: 'LATIN CAPITAL LETTER S'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 70
		spacingRight: 50 * spacing + 55
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[6].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + ( 45 / 80 ) * diacriticHeight
		1:
			x: contours[0].nodes[1].expandedTo[0].x
			y: contours[0].nodes[1].expandedTo[0].y + ( 4 / 80 ) * thickness * contrast
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (4)
					y: Math.max(
						Math.min(
							35 + (7) + ( 150 * aperture * apertureBottom - 150 ),
							contours[0].nodes[2].expandedTo[0].y
						),
						0
					)
					dirOut: Math.min(
						Utils.lineAngle({x: contours[0].nodes[0].expandedTo[1].x, y: contours[0].nodes[0].expandedTo[1].y}, {x: contours[0].nodes[1].expandedTo[0].x, y: contours[0].nodes[1].expandedTo[0].y}),
						Utils.lineAngle({x: contours[0].nodes[0].expandedTo[0].x, y: contours[0].nodes[0].expandedTo[0].y}, {x: contours[0].nodes[1].expandedTo[0].x, y: contours[0].nodes[1].expandedTo[0].y}) - (12 / 180 * Math.PI)
					)
					expand:
						width: ( 75 / 80 ) * thickness * opticThickness * contrast * contrastExtremity
						# angle: 55 + 'deg'
						angle: Math.min(
							Math.max(
								55 - ( 50 * aperture * apertureBottom - 50 ),
								0 - 10
							),
							90
						) / 180 * Math.PI
						distr: 0.1
				1:
					x: contours[0].nodes[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].x ) * 0.49 + (4)
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand:
						width: ( 47 / 80 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[0].x + 205 + 200 * width - (50),
						contours[0].nodes[0].x + 0.5 * ( 75 / 80 ) * thickness * opticThickness + 10
					)
					y: (contours[0].nodes[1].y + ( 36 / 80 ) * thickness * opticThickness) +
						(
							(
								capHeight / 2 - Math.sin(
									47 / 180 * Math.PI + Math.PI / 2 - ( 5 / 180 * Math.PI )
								) * 0.5 * ( 88 / 80 ) * thickness * opticThickness
							) -
							(contours[0].nodes[1].y + ( 36 / 80 ) * thickness * opticThickness)
						) * 0.5 + (13)
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.2
					expand:
						width: ( 90 / 80 ) * thickness * opticThickness
						angle: - 165 + 'deg'
						distr: 0.5
				3:
					x: contours[0].nodes[4].expandedTo[1].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[4].expandedTo[1].x ) * ( 140 / 290 )
					y: contours[0].nodes[2].expandedTo[0].y + ( contours[0].nodes[4].expandedTo[1].y - contours[0].nodes[2].expandedTo[0].y ) * ( 105 / 200 ) * crossbar
					dirOut: Math.min(
						Utils.lineAngle({x: contours[0].nodes[2].expandedTo[0].x, y: contours[0].nodes[2].expandedTo[0].y}, {x: contours[0].nodes[4].expandedTo[1].x, y: contours[0].nodes[4].expandedTo[1].y}) + ((15 * width + (15 - (15 / 80) * thickness)) / 180 * Math.PI),
						Math.PI
					)
					type: 'smooth'
					tensionIn: 1.1
					tensionOut: 1.1
					expand:
						width: ( 98 / 80 ) * thickness * opticThickness
						angle: Math.PI * 0.5 - (5 / 180 * Math.PI) + Utils.lineAngle({x: contours[0].nodes[2].expandedTo[0].x, y: contours[0].nodes[2].expandedTo[0].y}, {x: contours[0].nodes[4].expandedTo[1].x, y: contours[0].nodes[4].expandedTo[1].y})
						distr: 0.5
				4:
					x: contours[0].nodes[0].x + 15 + (18/80) * thickness * opticThickness
					y: (
						capHeight / 2 + Math.sin(
							47 / 180 * Math.PI + Math.PI / 2 - ( 5 / 180 * Math.PI )
						) * 0.5 * ( 88 / 80 ) * thickness * opticThickness
					) + ( contours[0].nodes[5].y - ( 39 / 80 ) * thickness * opticThickness -
						(
							capHeight / 2 + Math.sin(
								47 / 180 * Math.PI + Math.PI / 2 - ( 5 / 180 * Math.PI )
							) * 0.5 * ( 88 / 80 ) * thickness * opticThickness
						)
					) * 0.5
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.2
					expand:
						width: ( 95 / 80 ) * thickness * opticThickness
						angle: 180 + 20 + 'deg'
						distr: 0.75
				5:
					x: contours[0].nodes[4].expandedTo[1].x + ( contours[0].nodes[6].expandedTo[1].x - contours[0].nodes[4].expandedTo[1].x ) * 0.55
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand:
						width: ( 49 / 80 ) * thickness * opticThickness * contrast
						angle: 180 - 100 + 'deg'
						distr: 1
				6:
					x: contours[0].nodes[2].expandedTo[0].x - 31 - (9)
					y: Math.min(
						Math.max(
							capHeight - 35 - (4) - ( 150 * aperture * apertureTop - 150 ),
							contours[0].nodes[4].expandedTo[1].y
						),
						capHeight
					)
					dirIn: Math.min(
						Utils.lineAngle({x: contours[0].nodes[6].expandedTo[0].x, y: contours[0].nodes[6].expandedTo[0].y}, {x: contours[0].nodes[5].expandedTo[1].x, y: contours[0].nodes[5].expandedTo[1].y}),
						Utils.lineAngle({x: contours[0].nodes[6].expandedTo[1].x, y: contours[0].nodes[6].expandedTo[1].y}, {x: contours[0].nodes[5].expandedTo[1].x, y: contours[0].nodes[5].expandedTo[1].y}) - (20 / 180 * Math.PI)
					)
					expand:
						width: ( 70 / 80 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: Math.min(
							Math.max(
								55 - ( 50 * aperture * apertureTop - 50 ),
								0 - 10
							),
							90
						) / 180 * Math.PI
						distr: 0.9
	components:
		0:
			base: ['none', 'serif-curve-inside-auto']
			id: 'toptop'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[6].expandedTo[1]
					baseHeight: contours[0].nodes[6].expandedTo[1]
					noneAnchor: contours[0].nodes[6].expandedTo[1]
					opposite: contours[0].nodes[6].expandedTo[0]
					curveEnd: contours[0].nodes[5].expandedTo[1]
					rotationAngle: 15
					rotationCenter: contours[0].nodes[6].expandedTo[1]
		1:
			base: ['serif-curve-inside-auto', 'none']
			id: 'topbottom'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[6].expandedTo[0]
					baseHeight: contours[0].nodes[6].expandedTo[1]
					noneAnchor: contours[0].nodes[6].expandedTo[0]
					opposite: contours[0].nodes[6].expandedTo[1]
					curveEnd: contours[0].nodes[5].expandedTo[0]
					rotationAngle: 15
					rotationCenter: contours[0].nodes[6].expandedTo[1]
					down: true
					inverseOrder: true
					reversed: true
			parameters:
				serifWidth: Math.max( ( 85 / 65 ) * serifWidth, serifWidth + 20 )
				serifHeight: Math.max( ( 60 / 50 ) * serifHeight, serifHeight + 10 )
				serifRotate: Math.max( serifRotate, serifRotate + 0.22 )
				serifCurve: Math.max( serifCurve, ( 20 / 80 ) * thickness )
		2:
			base: ['none', 'serif-curve-inside-auto']
			id: 'bottombottom'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[0].expandedTo[0]
					baseHeight: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					curveEnd: contours[0].nodes[1].expandedTo[0]
					rotationAngle: 15
					rotationCenter: contours[0].nodes[0].expandedTo[0]
					down: true
					left: true
		3:
			base: ['serif-curve-inside-auto', 'none']
			id: 'bottomtop'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[0].expandedTo[1]
					baseHeight: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					curveEnd: contours[0].nodes[1].expandedTo[1]
					rotationAngle: 15
					rotationCenter: contours[0].nodes[0].expandedTo[0]
					left: true
					inverseOrder: true
			parameters:
				serifWidth: Math.max( ( 100 / 65 ) * serifWidth, serifWidth + 35 )
				serifHeight: Math.max( ( 60 / 50 ) * serifHeight, serifHeight + 10 )
				serifRotate: Math.max( serifRotate, serifRotate + 0.18 )
				serifCurve: Math.max( serifCurve, ( 10 / 80 ) * thickness )
