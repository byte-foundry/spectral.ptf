exports.glyphs['h'] =
	unicode: 'h'
	glyphName: 'h'
	characterName: 'LATIN SMALL LETTER H'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 50 + serifWidth
		spacingRight: 50 * spacing + 40 + serifWidth
	tags: [
		'all',
		'latin',
		'lowercase'
	]
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
					y: ascenderHeight - Math.max( 0, serifHeight * serifArc ) - ( Math.sin( (15 * spurHeight) / 180 * Math.PI ) * ( thickness ) )
					expand:
						width: thickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 170 + 200 * width - (20),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * thickness + 10
					)
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.75
				1:
					x: contours[1].nodes[0].expandedTo[1].x
					y: xHeight - Math.min(
						107,
						( 107 / 450 ) * xHeight
					)
					dirOut: Math.PI / 2
					expand:
						width: ( 92 / 80 ) * thickness
						angle:( 180 - 150 ) / 180 * Math.PI
						distr: 1
				2:
					x: contours[1].nodes[3].x + ( contours[1].nodes[0].expandedTo[1].x - contours[1].nodes[3].x ) * 0.54
					y: xHeight + overshoot
					dirOut: Math.PI
					tensionOut: 1.25
					type: 'smooth'
					expand:
						width: ( 83 / 80 ) * thickness * contrast
						angle:( 180 - 122 ) / 180 * Math.PI
						distr: 1
				3:
					x: contours[0].nodes[0].expandedTo[1].x - ( 8 / 80 ) * thickness
					y: xHeight - 60 - (20)
					dirIn: Math.max(
						90 - ( 8 + 35 * width ),
						47
					) / 180 * Math.PI
					expand:
						width: ( 30 / 80 ) * thickness * contrast * contrastExtremity
						angle:( 180 - 90 ) / 180 * Math.PI
						distr: 0.9
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
			parentParameters:
				serifWidth: Math.min( ( 70 / 65 ) * serifWidth, serifWidth + 5 )
		2:
			base: ['serif-vertical', 'none']
			id: 'bottomleft2'
			class: 'lowerRightInsideStump'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
			parentParameters:
				serifWidth: Math.min( ( 70 / 65 ) * serifWidth, serifWidth + 5 )
		3:
			base: ['serif-vertical', 'none']
			id: 'bottomright2'
			class: 'lowerRightStump'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		4:
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
			transformOrigin: contours[0].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'translateY', - ( Math.sin( (15 * spurHeight) / 180 * Math.PI ) * ( thickness ) ) ]
				[ 'scaleY', -1 ],
			)
			parameters:
				serifHeight: Math.min( ( 85 / 50 ) * serifHeight, serifHeight + 35 )
				serifMedian: Math.max( ( 0.20 ) * serifMedian, serifMedian - 0.8 )
		# 5:
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
