exports.glyphs['ъ'] =
	unicode: 'ъ'
	glyphName: 'ъ'
	characterName: 'CYRILLIC SMALL LETTER HARD SIGN'
	ot:
		advanceWidth: contours[2].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 30
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
					x: contours[1].nodes[0].x + 100 + 64 * width + (20/80) * thickness
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: xHeight
					typeIn: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: contours[0].nodes[1].y
					typeOut: 'line'
					expand:
						width: ( 47 / 80 ) * thickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[1].y
					dirOut: 0
					tensionOut: 1.1
					expand:
						width: ( 47 / 80 ) * thickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x - ( 45 / 80 ) * thickness
					y: ( 230 / 450 ) * xHeight * crossbar + (24)
					typeOut: 'line'
					expand:
						width: ( 48 / 80 ) * thickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0.5
				1:
					x: Math.max(
						contours[2].nodes[0].x + ( contours[2].nodes[2].expandedTo[0].x - contours[2].nodes[0].x ) * ( 43 / 309 ),
						contours[0].nodes[0].expandedTo[1].x
					)
					# x: contours[0].nodes[0].expandedTo[0].x
					y: contours[2].nodes[0].expandedTo[1].y
					dirOut: 0
					typeIn: 'line'
					tensionOut: 1.1
					expand:
						width: ( 55 / 80 ) * thickness * contrast
						angle:( 180 + 118 ) / 180 * Math.PI
						distr: 1
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 171 + 200 * width - (20),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 90 / 80 ) * thickness + 10
					)
					y: contours[2].nodes[4].expandedTo[0].y + ( contours[2].nodes[0].expandedTo[0].y - contours[2].nodes[4].expandedTo[0].y ) * ( 143 / 277 )
					dirIn: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 94 / 80 ) * thickness
						angle:( - 187 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: Math.max(
						contours[2].nodes[4].x + ( contours[2].nodes[2].expandedTo[0].x - contours[2].nodes[4].x ) * ( 35 / 279 ),
						contours[0].nodes[0].expandedTo[1].x
					)
					y: 0
					dirIn: 0
					typeOut: 'line'
					expand:
						width: ( 55 / 80 ) * thickness * contrast
						angle: Math.PI / 2
						distr: 0
				4:
					x: contours[0].nodes[0].expandedTo[1].x - ( 45 / 80 ) * thickness
					y: 0
					expand:
						width: ( 47 / 80 ) * thickness * contrast
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
		1:
			base: ['serif-horizontal', 'none']
			id: 'topleftbottom'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
			parameters:
				serifWidth: Math.min( ( 125 / 65 ) * serifWidth, serifWidth + 60 )
				serifHeight: Math.min( ( 90 / 50 ) * serifHeight, serifHeight + 40 )
				serifMedian: Math.max( 0.23 * serifMedian, serifMedian - 0.12 )
		2:
			base: ['serif-vertical', 'none']
			id: 'topright'
			class: 'upperLeftInsideStump'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1]
					noneAnchor: contours[0].nodes[1].expandedTo[1]
					opposite: contours[0].nodes[1].expandedTo[0]
			transformOrigin: contours[0].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
