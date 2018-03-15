exports.glyphs['л'] =
	unicode: 'л'
	glyphName: 'л'
	characterName: 'CYRILLIC SMALL LETTER л'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 27
		spacingRight: 50 * spacing + 48 + serifWidth
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
					x: spacingLeft + 33
					y: - overshoot
					dirOut: 0
					expand:
						width: ( 84 / 80 ) * thickness
						angle: ( 98 / 180 ) * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[2].y - ( 47 / 80 ) * thickness * contrast * contrastExtremity - 47
					dirIn: - Math.PI / 2
					typeOut: 'line'
					tensionIn: 1.4
					expand:
						width: ( 50 / 80 ) * thickness * contrast
						angle: Math.PI
						distr: 0.75
				2:
					x: contours[0].nodes[0].x + 89 * width + (12)
					y: xHeight
					typeIn: 'line'
					expand:
						width: ( 50 / 80 ) * thickness * contrast
						angle: Math.PI
						distr: 0.75
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x + 77 + 200 * width - (20),
						contours[0].nodes[1].expandedTo[0].x + 0.75 * ( 80 / 80 ) * thickness + 10
					)
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 80 / 80 ) * thickness
						angle: Math.PI
						distr: 0.25
				1:
					x: contours[1].nodes[0].x
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					expand:
						width: ( 80 / 80 ) * thickness
						angle: Math.PI
						distr: 0.25
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x
					y: xHeight
					typeOut: 'line'
					expand:
						width: ( 47 / 80 ) * thickness * contrast * contrastExtremity
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[1].nodes[0].expandedTo[1].x
					y: xHeight
					expand:
						width: ( 47 / 80 ) * thickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeIn: 'line'
					typeOut: 'line'
				1:
					x: contours[3].nodes[0].x - 10
					y: contours[3].nodes[0].y
					typeIn: 'line'
					typeOut: 'line'
				2:
					x: contours[3].nodes[1].x - Math.min( 6, ( 6 / 80 ) * thickness )
					y: contours[3].nodes[1].y - Math.min( 6, ( 6 / 80 ) * thickness )
					typeIn: 'line'
					typeOut: 'line'
				3:
					x: contours[3].nodes[2].x
					y: contours[0].nodes[0].expandedTo[0].y + Math.min( 29, ( 29 / 80 ) * thickness )
					typeIn: 'line'
					dirOut: - Math.PI / 2
					tensionOut: 1.4
				4:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					dirIn: Math.PI
					tensionIn: 1.4
					typeOut: 'line'
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class: 'lowerLeftStump'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			class: 'lowerLeftInsideStump'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		2:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[2].expandedTo[1]
					noneAnchor: contours[0].nodes[2].expandedTo[1]
					opposite: contours[0].nodes[2].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[2].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		3:
			base: ['serif-vertical', 'none']
			id: 'topright'
			class: 'upperRightStump'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
			transformOrigin: contours[1].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
