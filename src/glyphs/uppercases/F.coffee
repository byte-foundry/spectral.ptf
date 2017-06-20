exports.glyphs['F'] =
	unicode: 'F'
	glyphName: 'F'
	characterName: 'LATIN CAPITAL LETTER F'
	ot:
		advanceWidth: contours[1].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 65 + ( 80 / 65 ) * serifWidth
		spacingRight: 50 * spacing + 70
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (22/80) * thickness * opticThickness
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 90 / 80 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: ( 90 / 80 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					typeOut: 'line'
					expand: Object({
						width: ( 55 / 80 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 200 + 200 * width + Math.max( 0, ( 20 / 80 ) * thickness - 20 )
					y: contours[1].nodes[0].expandedTo[0].y
					expand: Object({
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x
					y: ( 340 / 660 ) * capHeight * crossbar
					typeOut: 'line'
					expand: Object({
						width: ( 55 / 80 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: - 90 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 125 + 200 * width + Math.max( 0, ( 20 / 80 ) * thickness - 20 )
					y: contours[2].nodes[0].y
					expand: Object({
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0.5
					})
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
			parentParameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
			parentParameters:
				serifWidth: Math.min( ( 95 / 65 ) * serifWidth, serifWidth + 30 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		2:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0].point
					noneAnchor: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					reversed: true
			transformOrigin: contours[0].nodes[1].expandedTo[1].point
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		3:
			base: ['serif-horizontal', 'none']
			id: 'toprightbottom'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1].point
					noneAnchor: contours[1].nodes[1].expandedTo[1].point
					opposite: contours[1].nodes[1].expandedTo[0].point
					rotate: - 15 * serifRotate
			transformOrigin: contours[1].nodes[1].expandedTo[0].point
			transforms: Array(
				[ 'translateX', - ( Math.tan( (- (15 * 2) * serifRotate ) / 180 * Math.PI ) * ( ( 50 / 80 ) * thickness * opticThickness * contrast * 0.5 ) ) ]
			)
			parentParameters:
				serifWidth: Math.min( ( 115 / 65 ) * serifWidth, serifWidth + 50 )
				serifHeight: Math.min( ( 75 / 50 ) * serifHeight, serifHeight + 25 )
				serifMedian: Math.max( 0.23 * serifMedian, serifMedian - 0.12 )
		4:
			base: ['serif-horizontal-fake', 'none', 'serif-horizontal']
			id: 'toprighttop'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0].point
					noneAnchor: contours[1].nodes[1].expandedTo[0].point
					opposite: contours[1].nodes[1].expandedTo[1].point
					reversed: true
					rotate: 15 * serifRotate
			transformOrigin: contours[1].nodes[1].expandedTo[0].point
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'translateX', - ( Math.tan( (- (15 * 2) * serifRotate ) / 180 * Math.PI ) * ( ( 50 / 80 ) * thickness * opticThickness * contrast * 0.5 ) ) ]
			)
		5:
			base: ['serif-horizontal', 'none']
			id: 'middlebottom'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1].point
					noneAnchor: contours[2].nodes[1].expandedTo[1].point
					opposite: contours[2].nodes[1].expandedTo[0].point
			transformOrigin: contours[2].nodes[1].expandedTo[0].point
			parentParameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 65 / 50 ) * serifHeight, serifHeight + 15 )
		6:
			base: ['serif-horizontal', 'none']
			id: 'middletop'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0].point
					noneAnchor: contours[2].nodes[1].expandedTo[0].point
					opposite: contours[2].nodes[1].expandedTo[1].point
					reversed: true
			parentParameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 65 / 50 ) * serifHeight, serifHeight + 15 )
			transformOrigin: contours[2].nodes[1].expandedTo[0].point
			transforms: Array(
				[ 'scaleY', -1 ]
			)
