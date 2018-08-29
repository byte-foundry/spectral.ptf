exports.glyphs['ч'] =
	unicode: 'ч'
	glyphName: 'ч'
	characterName: 'CYRILLIC CAPITAL LETTER CHE'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 16 + serifWidth
		spacingRight: 50 * spacing + 29 + serifWidth
	tags: [
		'all',
		'cyrillic',
		'lowercase'
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
					x: spacingLeft + (22/80) * thickness
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: xHeight - ( 121 / 450 ) * xHeight
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				2:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * ( 228 / 396 )
					y: ( 184 / 450 ) * xHeight + (5)
					dirOut: 0
					tensionIn: 1.2
					type: 'smooth'
					expand:
						width: ( 44 / 80 ) * thickness * contrast
						angle: ( 70 / 180 ) * Math.PI
						distr: 0.1
				3:
					x: contours[1].nodes[0].expandedTo[0].x
					y: Math.max(
						( 201 / 450 ) * xHeight + (18),
						contours[0].nodes[2].y + ( 37 / 80 ) * thickness * contrast * contrastExtremity / 2 + 17
					)
					dirIn: Utils.lineAngle(
					        { x: contours[0].nodes[3].expandedTo[1].x, y: contours[0].nodes[3].expandedTo[1].y },
					        { x: contours[0].nodes[2].expandedTo[0].x, y: contours[0].nodes[2].expandedTo[0].y }
					    ) + ( 9 / 180 ) * Math.PI
					expand:
						width: ( 37 / 80 ) * thickness * contrast * contrastExtremity
						angle: Math.PI - Math.PI / 2
						distr: 0.5
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 153 + 200 * width - (20),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * thickness + 10
					)
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.75
				1:
					x: contours[1].nodes[0].x
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					expand:
						width: thickness
						angle: 0
						distr: 0.75
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-vertical', 'none']
			id: 'topright'
			class: 'upperLeftInsideStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		2:
			base: ['serif-vertical', 'none']
			id: 'bottomleft2'
			class: 'lowerRightInsideStump'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
		3:
			base: ['serif-vertical', 'none']
			id: 'bottomright2'
			class: 'lowerRightStump'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		4:
			base: ['serif-vertical', 'none']
			id: 'topleft2'
			class: 'upperRightInsideStump'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		5:
			base: ['serif-vertical', 'none']
			id: 'topright2'
			class: 'upperRightStump'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
