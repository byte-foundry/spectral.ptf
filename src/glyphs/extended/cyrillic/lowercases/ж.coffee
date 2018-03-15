# TODO: width and oblics — see x.coffee
# TODO: something wrong with one of the serifs
exports.glyphs['ж'] =
	unicode: 'ж'
	glyphName: 'ж'
	characterName: 'CYRILLIC SMALL LETTER ж'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 20 + ( 50 / 65 ) * serifWidth
		spacingRight: 50 * spacing + 20 + ( 35 / 65 ) * serifWidth
	tags: [
		'all',
		'cyrillic',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (25/80) * thickness
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: Math.PI - ( 75 / 80 ) * thickness / Math.cos( Utils.lineAngle(
						        { x: contours[0].nodes[0].x + 0.75 * ( 102 / 80 ) * thickness, y: contours[0].nodes[0].y },
						        { x: contours[0].nodes[0].x + ( contours[1].nodes[0].x - contours[0].nodes[0].x ) * 0.5  - ( ( 80 / 80 ) * thickness ) / 2, y: contours[0].nodes[1].y }
						    ) - Math.PI / 2 )
						angle: Math.PI
						distr: 0.25
				1:
					x: contours[2].nodes[0].expandedTo[0].x
					y: ( 238 / 450 ) * xHeight
					typeIn: 'line'
					expand:
						width: ( 75 / 80 ) * thickness
						angle: Utils.lineAngle(
						        { x: contours[2].nodes[0].expandedTo[0].x, y: ( 238 / 450 ) * xHeight },
						        { x: contours[3].nodes[1].expandedTo[1].x, y: xHeight }
						    ) - Math.PI
						distr: 1
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].x - 0.25 * ( 102 / 80 ) * thickness + 480 + 200 * width - (25),
						contours[0].nodes[0].x + 0.5 * ( 102 / 80 ) * thickness + ( 80 / 80 ) * thickness + 2 * 30 + 0.5 * ( 102 / 80 ) * thickness
					)
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: Math.PI + ( 75 / 80 ) * thickness / Math.cos( Utils.lineAngle(
						        { x: contours[0].nodes[0].x + 0.75 * ( 102 / 80 ) * thickness, y: contours[0].nodes[0].y },
						        { x: contours[0].nodes[0].x + ( contours[1].nodes[0].x - contours[0].nodes[0].x ) * 0.5  - ( ( 80 / 80 ) * thickness ) / 2, y: contours[0].nodes[1].y }
						    ) - Math.PI / 2 )
						angle: Math.PI
						distr: 0.25
				1:
					x: contours[2].nodes[0].expandedTo[1].x
					y: contours[0].nodes[1].y
					typeIn: 'line'
					expand:
						width: ( 75 / 80 ) * thickness
						angle: Utils.lineAngle(
						        { x: contours[1].nodes[0].expandedTo[1].x, y: contours[1].nodes[0].expandedTo[1].y },
						        { x: contours[1].nodes[1].x, y: contours[1].nodes[1].y }
						    ) + Math.PI / 2
						angle: Utils.lineAngle(
						        { x: contours[2].nodes[0].expandedTo[1].x, y: ( 238 / 450 ) * xHeight },
						        { x: contours[4].nodes[1].expandedTo[0].x, y: xHeight }
						    ) - Math.PI
						distr: 1
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x + ( contours[1].nodes[0].x - contours[0].nodes[0].x ) * 0.5
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 80 / 80 ) * thickness
						angle: 0
						distr: 0.5
				1:
					x: contours[2].nodes[0].x
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: ( 80 / 80 ) * thickness
						angle: 0
						distr: 0.5
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					typeOut: 'line'
					expand:
						width: ( 43 / 80 ) * thickness * contrast
						angle: Utils.lineAngle(
							{ x: contours[3].nodes[0].x, y: contours[3].nodes[0].y },
							{ x: contours[3].nodes[1].expandedTo[0].x, y: contours[3].nodes[1].expandedTo[0].y }
						) - Math.PI / 2 + Math.PI
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( 12 / 80 ) * thickness
					y: xHeight
					typeIn: 'line'
					expand:
						width: ( 70 / 80 ) * thickness * Math.sqrt( width ) * contrast
						angle: Math.PI
						distr: 0.75
		4:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].x
					y: contours[1].nodes[1].y
					typeOut: 'line'
					expand:
						width: ( 43 / 80 ) * thickness * contrast
						angle: Utils.lineAngle(
							{ x: contours[4].nodes[0].x, y: contours[4].nodes[0].y },
							{ x: contours[4].nodes[1].expandedTo[1].x, y: contours[4].nodes[1].expandedTo[1].y }
						) - Math.PI / 2 + Math.PI
						distr: 1
				1:
					x: contours[1].nodes[0].expandedTo[0].x - ( 10 / 80 ) * thickness
					y: xHeight
					typeIn: 'line'
					expand:
						width: ( 70 / 80 ) * thickness * Math.sqrt( width ) * contrast
						angle: Math.PI
						distr: 0.25
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class: 'lowerLeftStump'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[0]
					noneAnchor: contours[2].nodes[0].expandedTo[0]
					opposite: contours[2].nodes[0].expandedTo[1]
			# parameters:
			# 	serifWidth: Math.min( ( 75 / 65 ) * serifWidth, serifWidth + 10 )
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			class: 'lowerLeftInsideStump'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[1]
					noneAnchor: contours[2].nodes[0].expandedTo[1]
					opposite: contours[2].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[2].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
			# parameters:
			# 	serifWidth: Math.min( ( 75 / 65 ) * serifWidth, serifWidth + 10 )
		2:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0]
					noneAnchor: contours[2].nodes[1].expandedTo[0]
					opposite: contours[2].nodes[1].expandedTo[1]
					reversed: true
			transformOrigin: contours[2].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			# parameters:
			# 	serifWidth: Math.min( ( 75 / 65 ) * serifWidth, serifWidth + 10 )
		3:
			base: ['serif-vertical', 'none']
			id: 'topright'
			class: 'upperLeftInsideStump'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1]
					noneAnchor: contours[2].nodes[1].expandedTo[1]
					opposite: contours[2].nodes[1].expandedTo[0]
			transformOrigin: contours[2].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			# parameters:
			# 	serifWidth: Math.min( ( 75 / 65 ) * serifWidth, serifWidth + 10 )
		4:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[4].nodes[1].expandedTo[0]
					noneAnchor: contours[4].nodes[1].expandedTo[0]
					opposite: contours[4].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[4].nodes[0].expandedTo[0]
			transformOrigin: contours[4].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.max( ( 35 / 65 ) * serifWidth, serifWidth - 30 )
				serifHeight: Math.max( ( 40 / 50 ) * serifHeight, serifHeight - 10 )
		5:
			base: ['serif-oblique-acute', 'none']
			id: 'topleft2'
			parentAnchors:
				0:
					base: contours[4].nodes[1].expandedTo[1]
					noneAnchor: contours[4].nodes[1].expandedTo[1]
					opposite: contours[4].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[4].nodes[0].expandedTo[1]
					scaleX: -1
					reversed: true
			transformOrigin: contours[4].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min( ( 90 / 65 ) * serifWidth, serifWidth + 25 )
		6:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[0]
					scaleX: -1
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[0]
			parameters:
				serifWidth: Math.max( ( 45 / 65 ) * serifWidth, serifWidth - 20 )
				serifHeight: Math.max( ( 40 / 50 ) * serifHeight, serifHeight - 10 )
		7:
			base: ['serif-oblique-acute', 'none']
			id: 'topright1'
			parentAnchors:
				0:
					base: contours[3].nodes[1].expandedTo[0]
					noneAnchor: contours[3].nodes[1].expandedTo[0]
					opposite: contours[3].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[3].nodes[0].expandedTo[0]
			transformOrigin: contours[3].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min( ( 90 / 65 ) * serifWidth, serifWidth + 25 )
		8:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft1'
			parentAnchors:
				0:
					base: contours[3].nodes[1].expandedTo[1]
					noneAnchor: contours[3].nodes[1].expandedTo[1]
					opposite: contours[3].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[3].nodes[0].expandedTo[1]
					scaleX: -1
					reversed: true
			transformOrigin: contours[3].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.max( ( 40 / 65 ) * serifWidth, serifWidth - 25 )
				serifHeight: Math.max( ( 40 / 50 ) * serifHeight, serifHeight - 10 )
		9:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright1'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0]
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			parameters:
				serifWidth: Math.max( ( 50 / 65 ) * serifWidth, serifWidth - 15 )
				serifHeight: Math.max( ( 40 / 50 ) * serifHeight, serifHeight - 10 )
