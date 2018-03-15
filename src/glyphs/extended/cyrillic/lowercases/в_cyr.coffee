exports.glyphs['в_cyr'] =
	unicode: 'в'
	glyphName: 'в'
	characterName: 'CYRILLIC LETTER SMALL в'
	ot:
		advanceWidth: contours[2].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 48 + serifWidth
		spacingRight: 50 * spacing + 30
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
					x: spacingLeft + (20/80) * thickness
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 80 / 80 ) * thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					expand:
						width: ( 80 / 80 ) * thickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x - ( 40 / 80 ) * thickness
					y: contours[0].nodes[1].y
					typeOut: 'line'
					expand:
						width: ( 43 / 80 ) * thickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[1].nodes[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[0].x ) * ( 145 / 367 )
					y: contours[0].nodes[1].y
					dirOut: 0
					tensionOut: 1.1
					expand:
						width: ( 44 / 80 ) * thickness * contrast
						angle:( - 112 ) / 180 * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 125 + 200 * width - (21),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 97 / 80 ) * thickness + 10
					)
					y: contours[1].nodes[3].expandedTo[0].y + ( contours[1].nodes[0].expandedTo[0].y - contours[1].nodes[3].expandedTo[0].y ) * ( 169 / 312 )
					dirIn: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 82 / 80 ) * thickness
						angle:( - 167 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[2].nodes[1].expandedTo[0].x
					y: contours[2].nodes[0].expandedTo[0].y
					dirIn: 0
					type: 'smooth'
					expand:
						width: ( 43 / 80 ) * thickness * contrast
						angle:( 63 ) / 180 * Math.PI
						distr: 1
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x - ( 45 / 80 ) * thickness
					y: ( 236 / 450 ) * xHeight * crossbar
					typeOut: 'line'
					expand:
						width: ( 38 / 80 ) * thickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0.5
				1:
					x: Math.max(
						contours[2].nodes[0].x + ( contours[2].nodes[2].expandedTo[0].x - contours[2].nodes[0].x ) * ( 145 / 415 ),
						contours[0].nodes[0].expandedTo[1].x
					)
					# x: contours[0].nodes[0].expandedTo[0].x
					y: contours[2].nodes[0].expandedTo[1].y
					dirOut: 0
					tensionOut: 1.1
					expand:
						width: ( 44 / 80 ) * thickness * contrast
						angle:( 180 + 120 ) / 180 * Math.PI
						distr: 1
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 155 + 200 * width - (19),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 87 / 80 ) * thickness + 30
					)
					y: contours[2].nodes[4].expandedTo[0].y + ( contours[2].nodes[0].expandedTo[0].y - contours[2].nodes[4].expandedTo[0].y ) * ( 189 / 368 )
					dirIn: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 87 / 80 ) * thickness
						angle:( - 175 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: Math.max(
						contours[2].nodes[4].x + ( contours[2].nodes[2].expandedTo[0].x - contours[2].nodes[4].x ) * ( 131 / 396 ),
						contours[0].nodes[0].expandedTo[1].x
					)
					y: 0
					dirIn: 0
					typeOut: 'line'
					expand:
						width: ( 43 / 80 ) * thickness * contrast
						angle: Math.PI / 2
						distr: 0
				4:
					x: contours[0].nodes[0].expandedTo[1].x - ( 45 / 80 ) * thickness
					y: 0
					expand:
						width: ( 43 / 80 ) * thickness * contrast
						angle: Math.PI / 2
						distr: 0
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class: 'lowerLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
			# parameters:
			# 	serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
			# 	serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		1:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			# parameters:
			# 	serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
			# 	serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
