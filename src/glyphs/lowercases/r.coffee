# Todo: contrast
exports.glyphs['r'] =
	unicode: 'r'
	glyphName: 'r'
	characterName: 'LATIN SMALL LETTER R'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 50 + serifWidth
		spacingRight: 50 * spacing # + 40 + serifWidth
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (20/80) * thickness
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: contours[1].nodes[3].expandedTo[1].y + (20)
					expand:
						width: thickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[0].x + 38
					y: Math.min(
						contours[1].nodes[1].expandedTo[0].y - Math.tan( ( Math.PI - contours[1].nodes[1].dirOut ) ) * 38,
						contours[1].nodes[1].expandedTo[1].y - ( 95 / 80 ) * thickness
					)
					# typeOut: 'line'
					dirOut: Utils.lineAngle({x: contours[0].nodes[0].x, y: contours[0].nodes[0].y}, {x: contours[0].nodes[1].expandedTo[0].x, y: contours[0].nodes[1].expandedTo[0].y})
					expand:
						width: ( 74 / 80 ) * thickness
						angle:( 180 - 116 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 132 * width + ( 20 / 80 ) * thickness
					y: xHeight
					dirOut: Math.max(
						157 / 180 * Math.PI,
						Utils.lineAngle({x: contours[1].nodes[1].x, y: contours[1].nodes[1].y}, {x: contours[1].nodes[2].x, y: contours[1].nodes[2].y}) - 30 / 180 * Math.PI
					)
					tensionOut: 1 * contrast
					expand:
						width: ( 90 / 80 ) * thickness
						angle:( 180 - 116 ) / 180 * Math.PI
						distr: 1
				2:
					x: contours[1].nodes[3].x + ( contours[1].nodes[1].x - contours[1].nodes[3].x ) * ( 124 / 184 )
					y: xHeight + overshoot
					dirOut: Math.PI
					tensionOut: 1.25
					type: 'smooth'
					expand:
						width: ( 93 / 80 ) * thickness * contrast
						angle:( 180 - 122 ) / 180 * Math.PI
						distr: 1
				3:
					x: contours[0].nodes[0].expandedTo[1].x - ( 8 / 80 ) * thickness
					y: xHeight - 94 - (3)
					dirIn: Utils.lineAngle({x: contours[1].nodes[3].expandedTo[1].x, y: contours[1].nodes[3].expandedTo[1].y}, {x: contours[1].nodes[2].expandedTo[1].x, y: contours[1].nodes[2].expandedTo[1].y}) + (12 / 180 * Math.PI)
					expand:
						width: ( 34 / 80 ) * thickness * contrast * contrastExtremity
						angle:( 180 - 90 ) / 180 * Math.PI
						distr: 0.9
		2:
			skeleton: false
			closed: true
			exportReversed: true
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
					typeIn: 'line'
					dirOut: Utils.lineAngle({x: contours[1].nodes[2].expandedTo[1].x, y: contours[1].nodes[2].expandedTo[1].y}, {x: contours[1].nodes[0].expandedTo[1].x, y: contours[1].nodes[0].expandedTo[1].y})
				1:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					dirIn: Math.PI / 2
					type: 'smooth'
				2:
					x: contours[1].nodes[0].expandedTo[0].x + 7
					y: contours[1].nodes[0].expandedTo[0].y
					dirIn: Utils.lineAngle({x: contours[1].nodes[0].expandedTo[0].x, y: contours[1].nodes[0].expandedTo[0].y}, {x: contours[1].nodes[0].expandedTo[1].x, y: contours[1].nodes[0].expandedTo[1].y})
				3:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
					typeIn: 'line'
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
				serifWidth: Math.min( ( 70 / 65 ) * serifWidth, serifWidth + 5 )
		2:
			base: ['spur-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftSpur'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					reversed: true
					rotate: -15 * spurHeight
					aperture: true
			transformOrigin: contours[0].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'translateY', - ( (xHeight + overshoot) - contours[0].nodes[1].y ) ]
				[ 'scaleY', -1 ],
			)
			parameters:
				serifHeight: Math.min( ( 85 / 50 ) * serifHeight, serifHeight + 35 )
				serifMedian: Math.max( ( 0.20 ) * serifMedian, serifMedian - 0.8 )
		# 3:
		# 	base: ['inktrap', 'none']
		# 	id: 'inktrap2'
		# 	parentAnchors:
		# 		0:
		# 			x: contours[1].nodes[3].x
		# 			y: contours[1].nodes[3].y
		# 			noneAnchor: contours[1].nodes[3]
		# 	transformOrigin: contours[1].nodes[3]
		# 	transforms: Array(
		# 		[ 'scale', inktrap ]
		# 	)
