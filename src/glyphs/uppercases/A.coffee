# TODO: width and oblics — see x.coffee
exports.glyphs['A'] =
	unicode: 'A'
	glyphName: 'A'
	characterName: 'LATIN CAPITAL LETTER A'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 30 + ( 45 / 65 ) * serifWidth
		spacingRight: 50 * spacing + 35 + ( 45 / 65 ) * serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[1].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) * 0.5
			y: capHeight + ( 45 / 80 ) * diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (17/80) * thickness * opticThickness * contrast
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 68 / 80 ) * thickness * opticThickness * contrast
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( ( contours[1].nodes[1].expandedTo[1].x + ( contours[1].nodes[1].expandedTo[0].x - contours[1].nodes[1].expandedTo[1].x ) * 0.5 ) - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: capHeight + overshoot / 2
					expand: Object({
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].point ) - Math.PI / 2
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					x: Utils.onLine({
						y: contours[0].nodes[1].expandedTo[0].y - ( 55 / 80 ) * thickness * opticThickness
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: contours[0].nodes[1].expandedTo[0].y - ( 55 / 80 ) * thickness * opticThickness
					typeOut: 'line'
					expand: Object({
						width: ( 83 / 80 ) * thickness * opticThickness
						angle: Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].expandedTo[1].point ) - Math.PI / 2
						distr: 1
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 396 + 200 * width - (27)
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 94 / 80 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					typeOut: 'line'
				1:
					x: Utils.onLine({
						y: contours[0].nodes[1].expandedTo[0].y
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
					})
					y: contours[0].nodes[1].expandedTo[0].y
					typeOut: 'line'
				2:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
					typeOut: 'line'
				3:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					typeOut: 'line'
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: ( 290 / 660 ) * capHeight * crossbar - contours[3].nodes[0].expand.width * 1.3
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
					y: ( 290 / 660 ) * capHeight * crossbar - contours[3].nodes[0].expand.width * 1.3
					typeOut: 'line'
					expand: Object({
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: Utils.onLine({
						y: contours[3].nodes[0].y
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					y: contours[3].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0].point
			parentParameters:
				serifWidth: Math.max( ( 55 / 75 ) * serifWidth, serifWidth - 20 )
				serifHeight: Math.max( ( 35 / 50 ) * serifHeight, serifHeight - 15 )
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1].point
					scaleX: -1
					reversed: true
			parentParameters:
				serifWidth: Math.min( ( 115 / 75 ) * serifWidth, serifWidth + 40 )
		2:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1].point
					noneAnchor: contours[1].nodes[1].expandedTo[1].point
					opposite: contours[1].nodes[1].expandedTo[0].point
					obliqueEndPoint: contours[1].nodes[0].expandedTo[1].point
			parentParameters:
				serifWidth: Math.min( ( 125 / 75 ) * serifWidth, serifWidth + 50 )
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0].point
					noneAnchor: contours[1].nodes[1].expandedTo[0].point
					opposite: contours[1].nodes[1].expandedTo[1].point
					obliqueEndPoint: contours[1].nodes[0].expandedTo[0].point
					scaleX: -1
					reversed: true
			parentParameters:
				serifWidth: Math.max( ( 60 / 75 ) * serifWidth, serifWidth - 15 )
				serifHeight: Math.max( ( 45 / 50 ) * serifHeight, serifHeight - 5 )
		4:
			base: ['none', 'serif-oblique-acute']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0].point
					noneAnchor: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					obliqueEndPoint: contours[0].nodes[0].expandedTo[0].point
					scaleX: -1
					reversed: true
			transformOrigin: contours[0].nodes[1].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
