exports.glyphs['x'] =
	unicode: 'x'
	glyphName: 'x'
	characterName: 'LATIN SMALL LETTER X'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 26 + ( 30 / 65 ) * serifWidth
		spacingRight: 50 * spacing + 26 + ( 10 / 65 ) * serifWidth
	tags: [
		'all',
		'latin',
		'lowercase'
	]
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
						width: ((67 / 80) * thickness) / Math.sin(Utils.lineAngle({ x: spacingLeft - (0.25 * thickness), y: xHeight }, {x: contours[0].nodes[1].x, y: contours[0].nodes[1].y}))
						angle: 0
						distr: 0.75
				1:
					x: contours[0].nodes[0].x - ( 20 / 80 ) * thickness + 125 + 200 * width + (20)
					y: Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: ((72 / 80) * thickness) / Math.sin(Utils.lineAngle({ x: spacingLeft - (0.25 * thickness), y: xHeight }, {x: contours[0].nodes[1].x, y: contours[0].nodes[1].y}))
						angle: 0
						distr: 0.75
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * 0.5
					y: Utils.onLine({
						x: contours[0].nodes[0].expandedTo[1].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * 0.5
						on: [ {x: contours[1].nodes[1].x, y: contours[1].nodes[1].y}, {x: contours[2].nodes[1].x, y: contours[2].nodes[1].y} ]
					})
					typeOut: 'line'
					expand:
						width: ( 30 / 80 ) * thickness * contrast * contrastExtremity
						angle: Utils.lineAngle({x: contours[0].nodes[0].expandedTo[0].x, y: contours[0].nodes[0].expandedTo[0].y}, {x: contours[0].nodes[1].expandedTo[0].x, y: contours[0].nodes[1].expandedTo[0].y})
						distr: 0
				1:
					x: contours[0].nodes[1].expandedTo[0].x - 26 - (40/80) * thickness * contrast
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: - (43 / 80) * thickness / Math.sin(Utils.lineAngle({x: contours[1].nodes[1].x, y: contours[1].nodes[1].y}, {x: contours[1].nodes[0].expandedTo[1].x, y: contours[1].nodes[0].expandedTo[1].y})) * contrast
						angle: 0
						distr: 0.25
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * 0.5
					y: Utils.onLine({
						x: contours[0].nodes[0].expandedTo[1].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * 0.5
						on: [ contours[1].nodes[1].expandedTo[1], contours[2].nodes[1].expandedTo[1] ]
					})
					typeOut: 'line'
					expand:
						width: ( 30 / 80 ) * thickness * contrast * contrastExtremity
						angle: Utils.lineAngle({x: contours[0].nodes[1].expandedTo[0].x, y: contours[0].nodes[1].expandedTo[0].y}, {x: contours[0].nodes[0].expandedTo[0].x, y: contours[0].nodes[0].expandedTo[0].y})
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[1].x + (0)
					y: Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: contours[1].nodes[1].expand.width
						angle: Math.PI
						distr: 1
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft'
			class: 'leftObtuseSerif'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1]
					scaleX: -1
					reversed: true
			parameters:
				serifWidth: Math.max( ( 30 / 65 ) * serifWidth, serifWidth - 35 )
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'topright'
			class: 'leftAcuteSerif'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0]
			parameters:
				serifWidth: Math.min( ( 110 / 65 ) * serifWidth, serifWidth + 45 )
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		2:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1]
					noneAnchor: contours[0].nodes[1].expandedTo[1]
					opposite: contours[0].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[0].expandedTo[1]
			parameters:
				serifWidth: Math.min( ( 95 / 65 ) * serifWidth, serifWidth + 30 )
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[0].expandedTo[0]
					scaleX: -1
					reversed: true
			parameters:
				serifWidth: Math.max( ( 30 / 65 ) * serifWidth, serifWidth - 35 )
		4:
			base: ['serif-oblique-acute', 'none']
			id: 'topleft2'
			class: 'rightAcuteSerif'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[1].nodes[0].expandedTo[0]
					scaleX: -1
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min( ( 95 / 65 ) * serifWidth, serifWidth + 30 )
		5:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topright2'
			class: 'rightObtuseSerif'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[1].nodes[0].expandedTo[1]
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.max( ( 30 / 65 ) * serifWidth, serifWidth - 30 )
		6:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1]
					noneAnchor: contours[2].nodes[1].expandedTo[1]
					opposite: contours[2].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[2].nodes[0].expandedTo[1]
			parameters:
				serifWidth: Math.max( ( 35 / 65 ) * serifWidth, serifWidth - 30 )
		7:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0]
					noneAnchor: contours[2].nodes[1].expandedTo[0]
					opposite: contours[2].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[2].nodes[0].expandedTo[0]
					scaleX: -1
					reversed: true
			parameters:
				serifWidth: Math.min( ( 105 / 65 ) * serifWidth, serifWidth + 40 )
