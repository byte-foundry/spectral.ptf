# TODO: rotation on bottom serifs
# TODO: apply rotation on other glyphs (L, E, etc.)
exports.glyphs['z'] =
	unicode: 'z'
	glyphName: 'z'
	characterName: 'LATIN SMALL LETTER Z'
	ot:
		advanceWidth: contours[0].nodes[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
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
					expand:
						width: ( 45 / 80 ) * thickness * contrast
						angle: Math.PI / 2
						distr: 0
				1:
					x: spacingLeft + 18
					y: 0
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 45 / 80 ) * thickness * contrast
						angle: Math.PI / 2
						distr: 0
				2:
					x: Utils.onLine({
						y: ( 18 / 80 ) * thickness * contrast
						on: [ contours[2].nodes[0].expandedTo[0], contours[2].nodes[1].expandedTo[0] ]
					})
					y: ( 18 / 80 ) * thickness * contrast
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 18 / 80 ) * thickness * contrast
						angle:( 180 - 90 ) / 180 * Math.PI
						distr: 1
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].x + 10
					y: xHeight
					typeOut: 'line'
					expand:
						width: ( 45 / 80 ) * thickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[0].x - 26
					y: contours[1].nodes[0].y
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 45 / 80 ) * thickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				2:
					x: contours[1].nodes[1].x + 18
					y: Math.min(
						Utils.onLine({
							x: contours[1].nodes[1].x + 18
							on: [ contours[2].nodes[0].expandedTo[1], contours[2].nodes[1].expandedTo[1] ]
						}),
						xHeight
					)
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: if contours[1].nodes[2].y > xHeight then 0 else xHeight - contours[1].nodes[2].y
						angle:( 180 + 90 ) / 180 * Math.PI
						distr: 1
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
					expand:
						width: ( 80 / 80 ) * thickness
						angle: Math.max(
							Utils.lineAngle({x: contours[0].nodes[1].expandedTo[1].x, y: contours[0].nodes[1].expandedTo[1].y}, {x: contours[1].nodes[1].expandedTo[1].x, y: contours[1].nodes[1].expandedTo[1].y}) - Math.PI / 2,
							- Math.asin( (( 45 / 80 ) * thickness * contrast) / (( 80 / 80 ) * thickness))
						)
						distr: 0
				1:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
					typeIn: 'line'
					expand:
						width: ( 80 / 80 ) * thickness
						angle: Math.max(
							Utils.lineAngle({x: contours[0].nodes[1].expandedTo[1].x, y: contours[0].nodes[1].expandedTo[1].y}, {x: contours[1].nodes[1].expandedTo[1].x, y: contours[1].nodes[1].expandedTo[1].y}) - Math.PI / 2,
							- Math.asin( (( 45 / 80 ) * thickness * contrast) / (( 80 / 80 ) * thickness))
						)
						distr: 1
	components:
		0:
			base: ['serif-horizontal', 'none']
			id: 'topleftbottom'
			class: 'ZTopBottom'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					reversed: true
					rotate: - 5 * Math.max( serifRotate, serifRotate + 1 )
			transformOrigin: contours[1].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'translateX', -( Math.tan( (5 * Math.max( serifRotate, serifRotate + 1 )) / 180 * Math.PI ) * ( ( 45 / 80 ) * thickness * contrast * 0.5 ) ) ]
			)
			parameters:
				serifWidth: Math.min( ( 100 / 65 ) * serifWidth, serifWidth + 35 )
		1:
			base: ['serif-horizontal', 'none']
			id: 'toplefttop'
			class: 'ZTopTop'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
					rotate: 5 * Math.max( serifRotate, serifRotate + 1 )
			transformOrigin: contours[1].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ],
				[ 'translateX', -( Math.tan( (5 * Math.max( serifRotate, serifRotate + 1 )) / 180 * Math.PI ) * ( ( 45 / 80 ) * thickness * contrast * 0.5 ) ) ]
			)
			parameters:
				serifWidth: Math.max( ( 10 / 65 ) * serifWidth, serifWidth - 55 )
				serifMedian: Math.max( 0.2 * serifMedian, serifMedian - 0.15 )
		2:
			base: ['serif-horizontal', 'none']
			id: 'bottomrighttop'
			class: 'ZBottomTop'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min( ( 105 / 65 ) * serifWidth, serifWidth + 40 )
		3:
			base: ['none', 'serif-horizontal']
			id: 'bottomrightbottom'
			class: 'ZBottomBottom'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
			transformOrigin: contours[0].nodes[0].expandedTo[1]
