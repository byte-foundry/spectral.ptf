exports.glyphs['Э_cap'] =
	unicode: 'Э'
	glyphName: 'Э'
	characterName: 'CYRILLIC CAPITAL LETTER Э'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 90
		spacingRight: 50 * spacing + 70
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
						width: ( 80 / 80 ) * thickness * opticThickness
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
						width: ( 53 / 80 ) * thickness * opticThickness * contrast
						angle: ( 75 / 180 ) * Math.PI
						distr: 0
				2:
					x: contours[0].nodes[0].x + 365 + 200 * width - (33)
					y: ( 330 / 660 ) * capHeight
					dirIn: - Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 102 / 80 ) * thickness * opticThickness
						angle: ( 163 / 180 ) * Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[1].x
					y: capHeight + overshoot
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 53 / 80 ) * thickness * opticThickness * contrast
						angle: - ( 107 / 180 ) * Math.PI
						distr: 0
				4:
					x: contours[0].nodes[0].expandedTo[0].x + 14 + (15)
					y: capHeight - ( 35 / 660 ) * capHeight - (17)
					dirIn: Utils.lineAngle(
					        { x: contours[0].nodes[4].x, y: contours[0].nodes[4].y },
					        { x: contours[0].nodes[3].x, y: contours[0].nodes[3].y }
					    ) + ( 15 / 180 ) * Math.PI
					expand:
						width: ( 75 / 80 ) * thickness * opticThickness
						# angle: - ( 80 / 180 ) * Math.PI
						angle: Utils.lineAngle(
						        { x: contours[0].nodes[4].x, y: contours[0].nodes[4].y },
						        { x: contours[0].nodes[3].x, y: contours[0].nodes[3].y }
						    ) + ( 15 / 180 ) * Math.PI - Math.PI / 2
						distr: 0.25
	components:
		0:
			base: ['serif-curve-inside-auto', 'none']
			id: 'bottomtop'
			class: 'bottomInsideCurve'
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
		1:
			base: ['none', 'serif-curve-inside-auto']
			id: 'bottombottom'
			class: 'bottomOutsideCurve'
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
		2:
			base: ['serif-curve-inside-auto', 'none']
			id: 'topbottom'
			class: 'topInsideCurve'
			parentAnchors:
				0:
					baseDir: contours[0].nodes[4].dirIn
					baseWidth: contours[0].nodes[4].expandedTo[1]
					baseHeight: contours[0].nodes[4].expandedTo[1]
					noneAnchor: contours[0].nodes[4].expandedTo[1]
					opposite: contours[0].nodes[4].expandedTo[0]
					curveEnd: contours[0].nodes[3].expandedTo[1]
					rotationAngle: - 15
					rotationCenter: contours[0].nodes[4].expandedTo[0]
					down: true
					left: true
			parameters:
				serifWidth: Math.max( ( 110 / 65 ) * serifWidth, serifWidth + 45 )
				# serifHeight: Math.max( ( 70 / 50 ) * serifHeight, serifHeight + 20 )
				serifRotate: Math.max( serifRotate, serifRotate + 0.22 )
				# serifCurve: Math.max( serifCurve, ( 20 / 80 ) * thickness )
		3:
			base: ['none', 'serif-curve-inside-auto']
			id: 'toptop'
			class: 'topOutsideCurve'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[4].expandedTo[0]
					baseHeight: contours[0].nodes[4].expandedTo[0]
					noneAnchor: contours[0].nodes[4].expandedTo[0]
					opposite: contours[0].nodes[4].expandedTo[1]
					curveEnd: contours[0].nodes[3].expandedTo[0]
					rotationAngle: - 15
					left: true
					rotationCenter: contours[0].nodes[4].expandedTo[0]
