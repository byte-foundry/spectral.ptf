# TODO: width and oblics — see x.coffee
exports.glyphs['A_cap'] =
	unicode: 'A'
	glyphName: 'A'
	characterName: 'LATIN CAPITAL LETTER A'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
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
					expand:
						width: ( 68 / 80 ) * thickness * opticThickness * contrast
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( ( contours[1].nodes[1].expandedTo[1].x + ( contours[1].nodes[1].expandedTo[0].x - contours[1].nodes[1].expandedTo[1].x ) * 0.5 ) - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: capHeight + overshoot / 2
					typeIn: 'line'
					expand:
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: Utils.lineAngle({x: contours[0].nodes[0].expandedTo[0].x, y: contours[0].nodes[0].expandedTo[0].y}, {x: contours[0].nodes[1].x, y: contours[0].nodes[1].y}) - Math.PI / 2
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					x: Utils.onLine({
						y: contours[0].nodes[1].expandedTo[0].y - ( 55 / 80 ) * thickness * opticThickness
						on: [ contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0] ]
					})
					y: contours[0].nodes[1].expandedTo[0].y - ( 55 / 80 ) * thickness * opticThickness
					typeOut: 'line'
					expand:
						width: ( 83 / 80 ) * thickness * opticThickness
						angle: Utils.lineAngle({x: contours[1].nodes[0].x, y: contours[1].nodes[0].y}, {x: contours[1].nodes[1].expandedTo[1].x, y: contours[1].nodes[1].expandedTo[1].y}) - Math.PI / 2
						distr: 1
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 396 + 200 * width - (27)
					y: Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: ( 94 / 80 ) * thickness * opticThickness
						angle: Math.PI
						distr: 0.25
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					typeOut: 'line'
					typeIn: 'line'
				1:
					x: Utils.onLine({
						y: contours[0].nodes[1].expandedTo[0].y
						on: [ contours[1].nodes[0].expandedTo[0], contours[1].nodes[1].expandedTo[0] ]
					})
					y: contours[0].nodes[1].expandedTo[0].y
					typeOut: 'line'
					typeIn: 'line'
				2:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
					typeOut: 'line'
					typeIn: 'line'
				3:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					typeOut: 'line'
					typeIn: 'line'
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: ( 290 / 660 ) * capHeight * crossbar - contours[3].nodes[0].expand.width * 1.3
						on: [ contours[1].nodes[0].expandedTo[1], contours[1].nodes[1].expandedTo[1] ]
					}) - 1
					y: ( 290 / 660 ) * capHeight * crossbar - contours[3].nodes[0].expand.width * 1.3
					typeOut: 'line'
					expand:
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0
				1:
					x: Utils.onLine({
						y: contours[3].nodes[0].y
						on: [ contours[0].nodes[0].expandedTo[1], contours[0].nodes[1].expandedTo[1] ]
					})
					y: contours[3].nodes[0].y
					typeIn: 'line'
					expand:
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0]
			parentParameters:
				serifWidth: Math.max( ( 55 / 75 ) * serifWidth, serifWidth - 20 )
				serifHeight: Math.max( ( 35 / 50 ) * serifHeight, serifHeight - 15 )
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1]
					scaleX: -1
					reversed: true
			parameters:
				serifWidth: Math.min( ( 115 / 75 ) * serifWidth, serifWidth + 40 )
		2:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[1].nodes[0].expandedTo[1]
			parameters:
				serifWidth: Math.min( ( 125 / 75 ) * serifWidth, serifWidth + 50 )
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[1].nodes[0].expandedTo[0]
					scaleX: -1
					reversed: true
			parameters:
				serifWidth: Math.max( ( 60 / 75 ) * serifWidth, serifWidth - 15 )
				serifHeight: Math.max( ( 45 / 50 ) * serifHeight, serifHeight - 5 )
		4:
			base: ['none', 'serif-oblique-acute']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[0].expandedTo[0]
					scaleX: -1
					reversed: true
			transformOrigin: contours[0].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
