# TODO: rotation on bottom serifs
# TODO: apply rotation on other glyphs (L, E, etc.)
exports.glyphs['z'] =
	unicode: 'z'
	glyphName: 'z'
	characterName: 'LATIN SMALL LETTER Z'
	ot:
		advanceWidth: contours[0].nodes[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 70
		spacingRight: 50 * spacing + 75
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[1].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[0].expandedTo[0].x ) * 0.5
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 135 + 200 * width + Math.max( 0, ( 20 / 80 ) * thickness - 20 )
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 45 / 80 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: spacingLeft + 18
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 45 / 80 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: Utils.onLine({
						y: ( 18 / 80 ) * thickness * contrast
						on: [ contours[2].nodes[0].expandedTo[0].point, contours[2].nodes[1].expandedTo[0].point ]
					})
					y: ( 18 / 80 ) * thickness * contrast
					typeOut: 'line'
					expand: Object({
						width: ( 18 / 80 ) * thickness * contrast
						angle: 180 - 90 + 'deg'
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].x + 10
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 45 / 80 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x - 26
					y: contours[1].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 45 / 80 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: contours[1].nodes[1].x + 18
					y: Math.min(
						Utils.onLine({
							x: contours[1].nodes[1].x + 18
							on: [ contours[2].nodes[0].expandedTo[1].point, contours[2].nodes[1].expandedTo[1].point ]
						}),
						xHeight
					)
					typeOut: 'line'
					expand: Object({
						width: if contours[1].nodes[2].y > xHeight then 0 else xHeight - contours[1].nodes[2].y
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
						width: ( 80 / 80 ) * thickness
						angle: Math.max(
							Utils.lineAngle( contours[0].nodes[1].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ) - Math.PI / 2,
							- Math.asin( (( 45 / 80 ) * thickness * contrast) / (( 80 / 80 ) * thickness))
						)
						distr: 0
					})
				1:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
					expand: Object({
						width: ( 80 / 80 ) * thickness
						angle: Math.max(
							Utils.lineAngle( contours[0].nodes[1].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ) - Math.PI / 2,
							- Math.asin( (( 45 / 80 ) * thickness * contrast) / (( 80 / 80 ) * thickness))
						)
						distr: 1
					})
	components:
		0:
			base: ['serif-horizontal', 'none']
			id: 'topleftbottom'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1].point
					noneAnchor: contours[1].nodes[0].expandedTo[1].point
					opposite: contours[1].nodes[0].expandedTo[0].point
					reversed: true
					rotate: - 5 * Math.max( serifRotate, serifRotate + 1 )
			transformOrigin: contours[1].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'translateX', ( Math.tan( (5 * Math.max( serifRotate, serifRotate + 1 )) / 180 * Math.PI ) * ( ( 45 / 80 ) * thickness * contrast * 0.5 ) ) ]
			)
			parentParameters:
				serifWidth: Math.min( ( 100 / 65 ) * serifWidth, serifWidth + 35 )
		1:
			base: ['serif-horizontal', 'none']
			id: 'toplefttop'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0].point
					noneAnchor: contours[1].nodes[0].expandedTo[0].point
					opposite: contours[1].nodes[0].expandedTo[1].point
					rotate: 5 * Math.max( serifRotate, serifRotate + 1 )
			transformOrigin: contours[1].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ],
				[ 'translateX', ( Math.tan( (5 * Math.max( serifRotate, serifRotate + 1 )) / 180 * Math.PI ) * ( ( 45 / 80 ) * thickness * contrast * 0.5 ) ) ]
			)
			parentParameters:
				serifWidth: Math.max( ( 10 / 65 ) * serifWidth, serifWidth - 55 )
				serifMedian: Math.max( 0.2 * serifMedian, serifMedian - 0.15 )
		2:
			base: ['serif-horizontal', 'none']
			id: 'bottomrighttop'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min( ( 105 / 65 ) * serifWidth, serifWidth + 40 )
		3:
			base: ['none', 'serif-horizontal']
			id: 'bottomrightbottom'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
