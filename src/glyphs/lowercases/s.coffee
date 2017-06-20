exports.glyphs['s'] =
	unicode: 's'
	glyphName: 's'
	characterName: 'LATIN SMALL LETTER S'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 60
		spacingRight: 50 * spacing + 70
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[5].expandedTo[0].x
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 25
					dirOut: - 25 + 'deg'
					expand: Object({
						width: ( 50 / 80 ) * thickness * contrast * contrastExtremity
						angle: 89 + 'deg'
						distr: 0.1
					})
				1:
					x: contours[0].nodes[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].x ) * 0.5
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 36 / 80 ) * thickness * contrast
						angle: 98 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[0].x + 100 + 200 * width - (38),
						contours[0].nodes[0].x + 0.5 * ( 75 / 80 ) * thickness + 10
					)
					y: (contours[0].nodes[1].y + ( 36 / 80 ) * thickness) +
						(
							(
								xHeight / 2 - Math.sin(
									47 / 180 * Math.PI + Math.PI / 2 - ( 5 / 180 * Math.PI )
								) * 0.5 * ( 88 / 80 ) * thickness
							) -
							(contours[0].nodes[1].y + ( 36 / 80 ) * thickness)
						) * 0.5
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.2
					expand: Object({
						width: ( 75 / 80 ) * thickness
						angle: - 160 + 'deg'
						distr: 0.5
					})
				3:
					x: contours[0].nodes[4].expandedTo[1].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[4].expandedTo[1].x ) * ( 140 / 290 )
					y: contours[0].nodes[2].expandedTo[0].y + ( contours[0].nodes[4].expandedTo[1].y - contours[0].nodes[2].expandedTo[0].y ) * ( 105 / 200 ) * crossbar
					dirOut: Math.min(
						Math.PI,
						Utils.lineAngle( contours[0].nodes[2].expandedTo[0].point, contours[0].nodes[4].expandedTo[1].point ) + ( 18 / 180 * Math.PI )
					)
					type: 'smooth'
					tensionIn: 1.1
					tensionOut: 1.1
					expand: Object({
						width: ( 88 / 80 ) * thickness
						angle: Utils.lineAngle( contours[0].nodes[2].expandedTo[0].point, contours[0].nodes[4].expandedTo[1].point ) + Math.PI / 2 - ( 5 / 180 * Math.PI )
						distr: 0.5
					})
				4:
					x: contours[0].nodes[0].x + 15 + (18/80) * thickness
					y: (
						xHeight / 2 + Math.sin(
							47 / 180 * Math.PI + Math.PI / 2 - ( 5 / 180 * Math.PI )
						) * 0.5 * ( 88 / 80 ) * thickness
					) + ( contours[0].nodes[5].y - ( 39 / 80 ) * thickness -
						(
							xHeight / 2 + Math.sin(
								47 / 180 * Math.PI + Math.PI / 2 - ( 5 / 180 * Math.PI )
							) * 0.5 * ( 88 / 80 ) * thickness
						)
					) * 0.5
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.2
					expand: Object({
						width: ( 77 / 80 ) * thickness
						angle: 180 + 23 + 'deg'
						distr: 0.75
					})
				5:
					x: contours[0].nodes[4].expandedTo[1].x + ( contours[0].nodes[6].expandedTo[0].x - contours[0].nodes[4].expandedTo[1].x ) * 0.5
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 39 / 80 ) * thickness * contrast
						angle: 180 - 82 + 'deg'
						distr: 1
					})
				6:
					x: contours[0].nodes[2].expandedTo[0].x - 16
					y: xHeight - 24 - (6)
					dirIn: 150 + 'deg'
					expand: Object({
						width: ( 50 / 80 ) * thickness * contrast * contrastExtremity
						angle: 180 - 91 + 'deg'
						distr: 0.9
					})
	components:
		0:
			base: ['none', 'serif-curve-inside-auto']
			id: 'toptop'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[6].expandedTo[1]
					baseHeight: contours[0].nodes[6].expandedTo[1].point
					noneAnchor: contours[0].nodes[6].expandedTo[1].point
					opposite: contours[0].nodes[6].expandedTo[0].point
					curveEnd: contours[0].nodes[5].expandedTo[1]
					rotationAngle: 15
					rotationCenter: contours[0].nodes[6].expandedTo[1].point
		1:
			base: ['serif-curve-inside-auto', 'none']
			id: 'topbottom'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[6].expandedTo[0]
					baseHeight: contours[0].nodes[6].expandedTo[1].point
					noneAnchor: contours[0].nodes[6].expandedTo[0].point
					opposite: contours[0].nodes[6].expandedTo[1].point
					curveEnd: contours[0].nodes[5].expandedTo[0]
					rotationAngle: 15
					rotationCenter: contours[0].nodes[6].expandedTo[1].point
					down: true
					inverseOrder: true
					reversed: true
			parentParameters:
				serifWidth: Math.min( ( 55 / 65 ) * serifWidth, serifWidth - 10 )
				serifCurve: Math.max( serifCurve, 70 )
		2:
			base: ['none', 'serif-curve-inside-auto']
			id: 'bottombottom'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[0].expandedTo[0]
					baseHeight: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					curveEnd: contours[0].nodes[1].expandedTo[0]
					rotationAngle: 15
					rotationCenter: contours[0].nodes[0].expandedTo[0].point
					down: true
					left: true
		3:
			base: ['serif-curve-inside-auto', 'none']
			id: 'bottomtop'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[0].expandedTo[1]
					baseHeight: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					curveEnd: contours[0].nodes[1].expandedTo[1]
					rotationAngle: 15
					rotationCenter: contours[0].nodes[0].expandedTo[0].point
					left: true
					inverseOrder: true
			parentParameters:
				serifHeight: Math.max( ( 62 / 50 ) * serifHeight, serifHeight + 12 )
				serifCurve: Math.max( serifCurve, 50 )
				serifMedian: Math.max( 0.23 * serifMedian, serifMedian - 0.12 )
