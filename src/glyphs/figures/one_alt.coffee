exports.glyphs['one_alt'] =
	unicode: '1'
	glyphName: 'one'
	characterName: 'DIGIT ONE'
	altImg: 'alt-spectral-1-1.svg'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 90 + ( 120 / 65 ) * serifWidth
		spacingRight: 50 * spacing + 90 + ( 120 / 65 ) * serifWidth
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (42/80) * thickness
					y: 0 + Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 85 / 80 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
				1:
					x: contours[0].nodes[0].x
					y: ( 530 / 660 ) * capHeight - Math.max( 0, serifHeight * serifArc )
					expand:
						width: ( 85 / 80 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
			parentParameters:
				serifWidth: Math.min( ( 120 / 65 ) * serifWidth, serifWidth + 55 )
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
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
				serifWidth: Math.min( ( 120 / 65 ) * serifWidth, serifWidth + 55 )
		2:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min( ( 120 / 65 ) * serifWidth, serifWidth + 55 )
		3:
			base: ['serif-vertical', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1]
					noneAnchor: contours[0].nodes[1].expandedTo[1]
					opposite: contours[0].nodes[1].expandedTo[0]
			transformOrigin: contours[0].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min( ( 120 / 65 ) * serifWidth, serifWidth + 55 )
