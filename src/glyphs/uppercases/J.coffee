exports.glyphs['J'] =
	unicode: 'J'
	glyphName: 'J'
	characterName: 'LATIN CAPITAL LETTER J'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 70 + ( 80 / 65 ) * serifWidth
		spacingRight: 50 * spacing + 70 + ( 80 / 65 ) * serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: 0
			y: 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (45/80) * thickness * opticThickness
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 90 / 80 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: Math.max( 50, Math.max( 50 * width, ( 50 / 660 ) * capHeight ))
					dirOut: - 90 + 'deg'
					expand: Object({
						width: ( 90 / 80 ) * thickness * opticThickness / Math.cos( ( Math.min( 65, 90 - 25 / 80 * thickness * opticThickness )) / 180 * Math.PI )
						angle: ( Math.min( 65, 90 - 25 / 80 * thickness * opticThickness )) + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[0].expandedTo[0].x - 50 - 50 * width
					y: ( 173 / 250 ) * descender
					dirIn: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 80 / 80 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: 180 + 65 + 'deg'
						distr: 1
					})
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y
					dirOut: 180 + 'deg'
				1:
					x: contours[0].nodes[2].expandedTo[1].x - ( 33 / 80 ) * thickness * opticThickness
					y: contours[0].nodes[2].expandedTo[1].y + ( contours[0].nodes[2].expandedTo[0].y - contours[0].nodes[2].expandedTo[1].y ) * ( 28 / 80 )
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionOut: 0.1
				2:
					x: contours[1].nodes[1].x + ( 10 / 80 ) * thickness * opticThickness
					y: contours[0].nodes[2].expandedTo[0].y + ( 9 / 80 ) * thickness * opticThickness
					typeOut: 'line'
				3:
					x: contours[1].nodes[2].x + 6
					y: contours[1].nodes[2].y
					dirOut: - 15 + 'deg'
				4:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[2].expandedTo[0].y
					typeOut: 'line'
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		1:
			base: ['serif-vertical', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
