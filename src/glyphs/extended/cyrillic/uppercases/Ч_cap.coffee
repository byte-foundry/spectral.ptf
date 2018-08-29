exports.glyphs['Ч_cap'] =
	unicode: 'Ч'
	glyphName: 'Ч'
	characterName: 'CYRILLIC CAPITAL LETTER Ч'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 17 + ( 80 / 65 ) * serifWidth
		spacingRight: 50 * spacing + 65 + ( 80 / 65 ) * serifWidth
	tags: [
		'all',
		'cyrillic',
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
					x: spacingLeft + (22/80) * thickness * opticThickness
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 90 / 80 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: capHeight - ( 160 / 660 ) * capHeight
					expand:
						width: ( 90 / 80 ) * thickness * opticThickness
						angle: - ( 3 / 180 ) * Math.PI
						distr: 0.25
				2:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * ( 228 / 396 )
					y: ( 276 / 660 ) * capHeight + (5)
					dirOut: 0
					tensionIn: 1.2
					type: 'smooth'
					expand:
						width: ( 63 / 80 ) * thickness * opticThickness * contrast
						angle: ( 59 / 180 ) * Math.PI
						distr: 0.1
				3:
					x: contours[1].nodes[0].expandedTo[0].x
					y: Math.max(
						( 303 / 660 ) * capHeight + (25),
						contours[0].nodes[2].y + ( 51 / 80 ) * thickness * contrast * contrastExtremity * opticThickness / 2 + 27
					)
					dirIn: Utils.lineAngle(
					        { x: contours[0].nodes[3].expandedTo[1].x, y: contours[0].nodes[3].expandedTo[1].y },
					        { x: contours[0].nodes[2].expandedTo[0].x, y: contours[0].nodes[2].expandedTo[0].y }
					    ) + ( 15 / 180 ) * Math.PI
					expand:
						width: ( 51 / 80 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: Math.PI - Math.PI / 2
						distr: 0.5
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 286 + 200 * width - (22),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 90 / 80 ) * thickness * opticThickness + 10
					)
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 90 / 80 ) * thickness * opticThickness
						angle: 0
						distr: 0.75
				1:
					x: contours[1].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					expand:
						width: ( 90 / 80 ) * thickness * opticThickness
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
			parameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
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
			parameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		2:
			base: ['serif-vertical', 'none']
			id: 'bottomleft2'
			class: 'lowerRightInsideStump'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
			parameters:
				serifWidth: Math.min( ( 90 / 65 ) * serifWidth, serifWidth + 25 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
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
			parameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
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
			parameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
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
			parameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
