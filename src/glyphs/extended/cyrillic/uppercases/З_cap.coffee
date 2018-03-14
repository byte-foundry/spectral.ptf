exports.glyphs['З_cap'] =
	unicode: 'З'
	glyphName: 'З'
	characterName: 'CYRILLIC CAPITAL LETTER З'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 90
		spacingRight: 50 * spacing + 67
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
					x: spacingLeft + (20/80) * thickness * opticThickness
					y: ( 39 / 660 ) * capHeight + (20/80) * thickness * opticThickness
					dirOut: Utils.lineAngle(
					        { x: contours[0].nodes[0].expandedTo[0].x, y: contours[0].nodes[0].expandedTo[0].y },
					        { x: contours[0].nodes[1].expandedTo[0].x, y: contours[0].nodes[1].expandedTo[0].y }
					    ) - ( 25 / 180 ) * Math.PI
					expand:
						width: ( 80 / 80 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: Utils.lineAngle(
						        { x: contours[0].nodes[0].x, y: contours[0].nodes[0].y },
						        { x: contours[0].nodes[1].x, y: contours[0].nodes[1].y }
						    ) - ( 25 / 180 ) * Math.PI + Math.PI / 2
						distr: 0.25
				1:
					x: contours[0].nodes[0].x + ( contours[0].nodes[2].x - contours[0].nodes[0].x ) * ( 221 / 481 )
					y: - overshoot
					dirIn: Math.PI
					type: 'smooth'
					expand:
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: ( 91 / 180 ) * Math.PI
						distr: 0
				2:
					x: contours[0].nodes[0].x + 281 + 200 * width - (35)
					y: contours[0].nodes[1].y + ( contours[0].nodes[4].expandedTo[1].y - contours[0].nodes[1].y ) * ( 199 / 378 ) + (25/80) * thickness * opticThickness
					dirIn: - Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 97 / 80 ) * thickness * opticThickness
						angle: ( 185 / 180 ) * Math.PI
						distr: 0.25
				3:
					x: Math.max(
						contours[0].nodes[4].x + 78,
						contours[0].nodes[1].x
					)
					y: contours[0].nodes[4].y
					dirIn: 0
					typeOut: 'line'
					expand:
						width: contours[0].nodes[4].expand.width / Math.sin( ( 109 / 180 ) * Math.PI )
						angle: Math.PI + ( 109 / 180 ) * Math.PI
						distr: 0.5
				4:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[1].x - contours[0].nodes[0].expandedTo[0].x ) * ( 120 / 221 )
					y: ( 343 / 660 ) * capHeight * crossbar
					typeIn: 'line'
					expand:
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
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
						width: ( 30 / 80 ) * thickness * opticThickness * contrast
						angle: - Math.PI / 2
						distr: 0
				1:
					x: contours[0].nodes[2].expandedTo[0].x - 35
					y: contours[0].nodes[4].expandedTo[0].y + ( contours[1].nodes[2].expandedTo[1].y - contours[0].nodes[4].expandedTo[0].y ) * ( 204 / 367 ) - (20/80) * thickness * opticThickness
					dirIn: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 101 / 80 ) * thickness * opticThickness
						angle: Math.PI + ( 196 / 180 ) * Math.PI
						distr: 1
				2:
					x: contours[0].nodes[1].x
					y: capHeight + overshoot
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 50 / 80 ) * thickness * opticThickness * contrast
						angle: Math.PI - ( 96 / 180 ) * Math.PI
						distr: 1
				3:
					x: contours[0].nodes[0].expandedTo[0].x + 14 + (15)
					y: capHeight - ( 35 / 660 ) * capHeight - (17)
					dirIn: Utils.lineAngle(
					        { x: contours[1].nodes[3].x, y: contours[1].nodes[3].y },
					        { x: contours[1].nodes[2].x, y: contours[1].nodes[2].y }
					    ) + ( 15 / 180 ) * Math.PI
					expand:
						width: ( 75 / 80 ) * thickness * opticThickness * contrast * contrastExtremity
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
				serifWidth: Math.min( ( 100 / 65 ) * serifWidth, serifWidth + 35 )
				serifHeight: Math.min( ( 60 / 50 ) * serifHeight, serifHeight + 10 )
				serifRotate: Math.max( serifRotate, serifRotate + 0.18 )
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
				serifWidth: Math.min( ( 110 / 65 ) * serifWidth, serifWidth + 45 )
				serifHeight: Math.min( ( 70 / 50 ) * serifHeight, serifHeight + 20 )
				serifRotate: Math.max( serifRotate, serifRotate + 0.22 )
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
