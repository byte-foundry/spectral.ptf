exports.glyphs['U_cap'] =
	unicode: 'U'
	glyphName: 'U'
	characterName: 'LATIN CAPITAL LETTER U'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 65 + ( 80 / 65 ) * serifWidth
		spacingRight: 50 * spacing + 65 + ( 80 / 65 ) * serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + ( 45 / 80 ) * diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (22)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 90 / 80 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: Math.max(
						( 234 / 660 ) * capHeight,
						contours[0].nodes[2].expandedTo[1].y + ( 30 / 80 ) * thickness
					)
					# y: ( 234 / 660 ) * capHeight
					dirOut: Math.PI / 2
					typeIn: 'line'
					expand:
						width: ( 91 / 80 ) * thickness * opticThickness
						angle:( 10 ) / 180 * Math.PI
						distr: 0
				2:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: - overshoot
					dirOut: 0
					typeIn: 'smooth'
					expand:
						# width: thickness * opticThickness * contrast / Math.sin(contours[0].nodes[2].expand.angle)
						width: ( 64 / 80 ) * thickness * opticThickness * contrast
						angle:( 45 + 20 * contrast ) / 180 * Math.PI
						# TODO:
						# angle: Math.max(
						# 	Math.atan2(
						# 		((( 65 / 80 ) * thickness * opticThickness * contrast) + overshoot),
						# 		(( contours[0].nodes[3].expandedTo[1].x + contours[0].nodes[1].expandedTo[1].x ) * 0.5 - contours[0].nodes[2].x)
						# 	),
						# 	0
						# )
						distr: 0
				3:
					x: contours[0].nodes[4].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					dirIn:( - 90 ) / 180 * Math.PI
					typeOut: 'line'
					expand:
						# width: thickness * opticThickness * contrast * - Math.cos(contours[0].nodes[3].expand.angle)
						width: ( 73 / 80 ) * thickness * opticThickness * contrast
						angle:( - 163 ) / 180 * Math.PI
						distr: 0
				4:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 320 + 200 * width - (17),
						contours[0].nodes[0].expandedTo[1].x + 0.25 * ( 70 / 80 ) * thickness * opticThickness * contrast
					)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: ( 70 / 80 ) * thickness * opticThickness * contrast
						angle: Math.PI
						distr: 0.25
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		1:
			base: ['serif-vertical', 'none']
			id: 'topright'
			class: 'upperLeftInsideStump'
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
			parameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		2:
			base: ['serif-vertical', 'none']
			id: 'topleft2'
			class: 'upperRightInsideStump'
			parentAnchors:
				0:
					base: contours[0].nodes[4].expandedTo[1]
					noneAnchor: contours[0].nodes[4].expandedTo[1]
					opposite: contours[0].nodes[4].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[4].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min( ( 100 / 65 ) * serifWidth, serifWidth + 35 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		3:
			base: ['serif-vertical', 'none']
			id: 'topright2'
			class: 'upperRightStump'
			parentAnchors:
				0:
					base: contours[0].nodes[4].expandedTo[0]
					noneAnchor: contours[0].nodes[4].expandedTo[0]
					opposite: contours[0].nodes[4].expandedTo[1]
			transformOrigin: contours[0].nodes[4].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
