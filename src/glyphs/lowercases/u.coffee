exports.glyphs['u'] =
	unicode: 'u'
	glyphName: 'u'
	characterName: 'LATIN SMALL LETTER U'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 26 + serifWidth
		spacingRight: 50 * spacing + 26 + serifWidth
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
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: 107
					dirOut: - 90 + 'deg'
					expand:
						width: ( 93 / 80 ) * thickness
						angle: 31 + 'deg'
						distr: 0
				2:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * ( 135 / 300 )
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand:
						width: ( 86 / 80 ) * thickness * contrast
						angle: 58 + 'deg'
						distr: 0
				3:
					x: contours[1].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[1].nodes[0].expandedTo[0].x ) * ( 8 / 80 )
					y: 76 + (16)
					dirIn: - 135 + 'deg'
					tensionIn: 1.1
					expand:
						width: ( 32 / 80 ) * thickness * contrast * contrastExtremity
						angle: 90 + 'deg'
						distr: 0.5
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 170 + 200 * width - (20),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * thickness + 10
					)
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
				1:
					x: contours[1].nodes[0].x
					y: Math.max( 0, serifHeight * serifArc )
					expand:
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		1:
			base: ['none', 'serif-vertical']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		2:
			base: ['serif-vertical', 'none']
			id: 'topleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min( ( 70 / 65 ) * serifWidth, serifWidth + 5 )
		3:
			base: ['none', 'serif-vertical']
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		4:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
			parameters:
				serifWidth: Math.min( ( 70 / 65 ) * serifWidth, serifWidth + 5 )
	# 	5:
	# 		base: ['inktrap', 'none']
	# 		id: 'inktrap2'
	# 		parentAnchors:
	# 			0:
	# 				x: contours[1].nodes[3].x
	# 				y: contours[1].nodes[3].y
	# 				noneAnchor: contours[1].nodes[3]
	# 		transformOrigin: contours[1].nodes[3]
	# 		transforms: Array(
	# 			[ 'scale', inktrap ]
	# 		)
