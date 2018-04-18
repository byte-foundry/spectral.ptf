exports.glyphs['з'] =
	unicode: 'з'
	glyphName: 'з'
	characterName: 'CYRILLIC SMALL LETTER з'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 60
		spacingRight: 50 * spacing + 45
	tags: [
		'all',
		'cyrillic',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (10/80) * thickness
					y: ( 24 / 660 ) * xHeight + (20/80) * thickness
					dirOut: Utils.lineAngle(
					        { x: contours[0].nodes[0].expandedTo[0].x, y: contours[0].nodes[0].expandedTo[0].y },
					        { x: contours[0].nodes[1].expandedTo[0].x, y: contours[0].nodes[1].expandedTo[0].y }
					    ) - ( 25 / 180 ) * Math.PI
					expand:
						width: ( 65 / 80 ) * thickness * contrast * contrastExtremity
						angle: Utils.lineAngle(
						        { x: contours[0].nodes[0].x, y: contours[0].nodes[0].y },
						        { x: contours[0].nodes[1].x, y: contours[0].nodes[1].y }
						    ) - ( 25 / 180 ) * Math.PI + Math.PI / 2
						distr: 0.25
				1:
					x: contours[0].nodes[0].x + ( contours[0].nodes[2].x - contours[0].nodes[0].x ) * ( 148 / 338 )
					y: - overshoot
					dirIn: Math.PI
					type: 'smooth'
					expand:
						width: ( 36 / 80 ) * thickness * contrast
						angle: ( 93 / 180 ) * Math.PI
						distr: 0
				2:
					x: contours[0].nodes[0].x + 138 + 200 * width - (23)
					y: contours[0].nodes[1].y + ( contours[0].nodes[4].expandedTo[1].y - contours[0].nodes[1].y ) * ( 138 / 265 ) + (13/80) * thickness
					dirIn: - Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 90 / 80 ) * thickness
						angle: ( 182 / 180 ) * Math.PI
						distr: 0.25
				3:
					x: Math.max(
						contours[0].nodes[4].x + 57,
						contours[0].nodes[1].x
					)
					y: contours[0].nodes[4].y
					dirIn: 0
					typeOut: 'line'
					expand:
						width: contours[0].nodes[4].expand.width / Math.sin( ( 89 / 180 ) * Math.PI )
						angle: Math.PI + ( 89 / 180 ) * Math.PI
						distr: 0.5
				4:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[1].x - contours[0].nodes[0].expandedTo[0].x ) * ( 120 / 221 ) + (9)
					y: ( 236 / 450 ) * xHeight * crossbar + (8)
					typeIn: 'line'
					expand:
						width: ( 38 / 80 ) * thickness * contrast
						angle: - Math.PI / 2
						distr: 0.5
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[3].x
					y: contours[0].nodes[4].expandedTo[0].y
					# typeOut: 'line'
					dirOut: 0
					expand:
						width: ( 19 / 80 ) * thickness * contrast
						angle: - Math.PI / 2
						distr: 0
				1:
					x: contours[0].nodes[2].expandedTo[0].x - 25
					y: contours[0].nodes[4].expandedTo[0].y + ( contours[1].nodes[2].expandedTo[1].y - contours[0].nodes[4].expandedTo[0].y ) * ( 96 / 166 ) - (20/80) * thickness
					dirIn: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 85 / 80 ) * thickness
						angle: Math.PI + ( 187 / 180 ) * Math.PI
						distr: 1
				2:
					x: contours[0].nodes[1].x - (10)
					y: xHeight + overshoot
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 42 / 80 ) * thickness * contrast
						angle: Math.PI - ( 67 / 180 ) * Math.PI
						distr: 1
				3:
					x: contours[0].nodes[0].expandedTo[0].x + 9 + (13)
					y: xHeight - ( 34 / 660 ) * xHeight - (10)
					dirIn: Utils.lineAngle(
					        { x: contours[1].nodes[3].x, y: contours[1].nodes[3].y },
					        { x: contours[1].nodes[2].x, y: contours[1].nodes[2].y }
					    ) + ( 15 / 180 ) * Math.PI
					expand:
						width: ( 55 / 80 ) * thickness * contrast * contrastExtremity
						# angle: - ( 80 / 180 ) * Math.PI
						angle: Math.PI + Utils.lineAngle(
						        { x: contours[1].nodes[3].x, y: contours[1].nodes[3].y },
						        { x: contours[1].nodes[2].x, y: contours[1].nodes[2].y }
						    ) + ( 15 / 180 ) * Math.PI - Math.PI / 2
						distr: 0.75
	components:
		0:
			base: ['serif-curve-inside-auto', 'none']
			id: 'bottomtop'
			class: 'bottomInsideCurve'
			parentAnchors:
				0:
					baseDir: contours[0].nodes[0].dirOut
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
			# 	serifWidth: Math.min( ( 100 / 65 ) * serifWidth, serifWidth + 35 )
			# 	serifHeight: Math.min( ( 60 / 50 ) * serifHeight, serifHeight + 10 )
			# 	serifRotate: Math.max( serifRotate, serifRotate + 0.18 )
				serifCurve: Math.max( serifCurve, ( 10 / 80 ) * thickness )
		1:
			base: ['none', 'serif-curve-inside-auto']
			id: 'bottombottom'
			class: 'bottomOutsideCurve'
			parentAnchors:
				0:
					baseDir: contours[0].nodes[0].dirOut
					baseWidth: contours[0].nodes[0].expandedTo[0]
					baseHeight: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					curveEnd: contours[0].nodes[1].expandedTo[0]
					rotationAngle: 15
					rotationCenter: contours[0].nodes[0].expandedTo[0]
					down: true
					left: true
		2:
			base: ['serif-curve-inside-auto', 'none']
			id: 'topbottom'
			class: 'topInsideCurve'
			parentAnchors:
				0:
					baseDir: contours[1].nodes[3].dirIn
					baseWidth: contours[1].nodes[3].expandedTo[0]
					baseHeight: contours[1].nodes[3].expandedTo[1]
					noneAnchor: contours[1].nodes[3].expandedTo[0]
					opposite: contours[1].nodes[3].expandedTo[1]
					curveEnd: contours[1].nodes[2].expandedTo[0]
					rotationAngle: - 15
					rotationCenter: contours[1].nodes[3].expandedTo[1]
					down: true
					left: true
					inverseOrder: true
			parameters:
			# 	serifWidth: Math.min( ( 110 / 65 ) * serifWidth, serifWidth + 45 )
			# 	serifHeight: Math.min( ( 70 / 50 ) * serifHeight, serifHeight + 20 )
			# 	serifRotate: Math.max( serifRotate, serifRotate + 0.22 )
				serifCurve: Math.max( serifCurve, ( 20 / 80 ) * thickness )
		3:
			base: ['none', 'serif-curve-inside-auto']
			id: 'toptop'
			class: 'topOutsideCurve'
			parentAnchors:
				0:
					baseDir: contours[1].nodes[3].dirIn
					baseWidth: contours[1].nodes[3].expandedTo[1]
					baseHeight: contours[1].nodes[3].expandedTo[1]
					noneAnchor: contours[1].nodes[3].expandedTo[1]
					opposite: contours[1].nodes[3].expandedTo[0]
					curveEnd: contours[1].nodes[2].expandedTo[1]
					rotationAngle: - 15
					left: true
					rotationCenter: contours[1].nodes[3].expandedTo[1]
