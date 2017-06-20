exports.glyphs['Z'] =
	unicode: 'Z'
	glyphName: 'Z'
	characterName: 'LATIN CAPITAL LETTER Z'
	ot:
		advanceWidth: contours[0].nodes[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 90
		spacingRight: 50 * spacing + 90
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
			y: capHeight + ( 45 / 80 ) * diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 266 + 200 * width
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: spacingLeft + 18
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: Utils.onLine({
						y: ( 25 / 80 ) * thickness * opticThickness * contrast
						on: [ contours[2].nodes[0].expandedTo[0].point, contours[2].nodes[1].expandedTo[0].point ]
					})
					y: ( 25 / 80 ) * thickness * opticThickness * contrast
					typeOut: 'line'
					expand: Object({
						width: ( 25 / 80 ) * thickness * opticThickness * contrast
						angle: 180 - 90 + 'deg'
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].x + 12
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x - 30
					y: contours[1].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: contours[1].nodes[1].x + 15
					y: Math.min(
						Utils.onLine({
							x: contours[1].nodes[1].x + 15
							on: [ contours[2].nodes[0].expandedTo[1].point, contours[2].nodes[1].expandedTo[1].point ]
						}),
						capHeight
					)
					typeOut: 'line'
					expand: Object({
						width: if contours[1].nodes[2].y > capHeight then 0 else capHeight - contours[1].nodes[2].y
						angle: 180 + 90 + 'deg'
						distr: 1
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: ( 80 / 80 ) * thickness * opticThickness
						angle: Math.max(
							Utils.lineAngle( contours[0].nodes[1].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ) - Math.PI / 2,
							- Math.asin( (( 55 / 80 ) * thickness * opticThickness * contrast) / (( 80 / 80 ) * thickness * opticThickness))
						)
						distr: 0
					})
				1:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
					expand: Object({
						width: ( 80 / 80 ) * thickness * opticThickness
						angle: Math.max(
							Utils.lineAngle( contours[0].nodes[1].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ) - Math.PI / 2,
							- Math.asin( (( 55 / 80 ) * thickness * opticThickness * contrast) / (( 80 / 80 ) * thickness * opticThickness))
						)
						distr: 1
					})
	components:
		0:
			base: ['serif-horizontal-fake', 'none', 'serif-horizontal']
			id: 'toplefttop'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0].point
					noneAnchor: contours[1].nodes[0].expandedTo[0].point
					opposite: contours[1].nodes[0].expandedTo[1].point
					rotate: 15 * serifRotate
			transformOrigin: contours[1].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'scaleX', -1 ],
				[ 'translateX', - ( Math.tan( (- (15 * 2) * serifRotate ) / 180 * Math.PI ) * ( ( 50 / 80 ) * thickness * opticThickness * contrast * 0.5 ) ) ]
			)
		1:
			base: ['serif-horizontal', 'none']
			id: 'topleftbottom'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1].point
					noneAnchor: contours[1].nodes[0].expandedTo[1].point
					opposite: contours[1].nodes[0].expandedTo[0].point
					reversed: true
					rotate: - 15 * serifRotate
			transformOrigin: contours[1].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'translateX', - ( Math.tan( (- (15 * 2) * serifRotate ) / 180 * Math.PI ) * ( ( 50 / 80 ) * thickness * opticThickness * contrast * 0.5 ) ) ]
			)
			parentParameters:
				serifWidth: Math.min( ( 125 / 65 ) * serifWidth, serifWidth + 60 )
				serifHeight: Math.min( ( 80 / 50 ) * serifHeight, serifHeight + 30 )
				serifMedian: Math.max( 0.23 * serifMedian, serifMedian - 0.12 )
		2:
			base: ['serif-horizontal', 'none']
			id: 'bottomrighttop'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					reversed: true
					rotate: - 15 * serifRotate
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'translateX', - ( Math.tan( (- (15 * 2) * serifRotate ) / 180 * Math.PI ) * ( ( 50 / 80 ) * thickness * opticThickness * contrast * 0.5 ) ) ]
			)
			parentParameters:
				serifWidth: Math.min( ( 135 / 65 ) * serifWidth, serifWidth + 70 )
				serifHeight: Math.min( ( 80 / 50 ) * serifHeight, serifHeight + 30 )
				serifMedian: Math.max( 0.23 * serifMedian, serifMedian - 0.12 )
		3:
			base: ['serif-horizontal-fake', 'none', 'serif-horizontal']
			id: 'bottomrightbottom'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					rotate: 15 * serifRotate
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'translateX', ( Math.tan( ((15 * 2) * serifRotate ) / 180 * Math.PI ) * ( ( 50 / 80 ) * thickness * opticThickness * contrast * 0.5 ) ) ]
			)
