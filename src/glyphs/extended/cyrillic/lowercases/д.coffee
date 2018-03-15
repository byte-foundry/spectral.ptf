exports.glyphs['д'] =
	unicode: 'д'
	glyphName: 'д'
	characterName: 'CYRILLIC SMALL LETTER д'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 25
		spacingRight: 50 * spacing + 45
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
					x: spacingLeft
					y: 0
					typeOut: 'line'
					expand:
						width: ( 47 / 80 ) * thickness * contrast
						angle: ( 90 / 180 ) * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[0].x + 268 + 200 * width
					y: contours[0].nodes[0].y
					typeIn: 'line'
					expand:
						width: ( 47 / 80 ) * thickness * contrast
						angle: ( 90 / 180 ) * Math.PI
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x + 53 * width + (14)
					y: contours[0].nodes[0].expandedTo[1].y
					dirOut: Utils.lineAngle( { x: contours[1].nodes[0].expandedTo[0].x, y: contours[1].nodes[0].expandedTo[0].y },{ x: contours[1].nodes[1].expandedTo[0].x, y: contours[1].nodes[1].expandedTo[0].y } ) - ( 10 / 180 ) * Math.PI
					# typeIn: 'smooth'
					expand:
						width: ( 55 / 80 ) * thickness * contrast
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x + 64 + 50 * width + (12)
					y: contours[2].nodes[1].expandedTo[1].y - 48
					dirIn: - ( 90 / 180 ) * Math.PI
					typeOut: 'line'
					expand:
						width: ( 50 / 80 ) * thickness * contrast
						angle: 0
						distr: 0.25
				2:
					x: contours[1].nodes[1].expandedTo[0].x
					y: xHeight
					typeIn: 'line'
					expand:
						width: ( 50 / 80 ) * thickness * contrast
						angle: 0
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[0].x
					y: xHeight
					typeOut: 'line'
					expand:
						width: ( 47 / 80 ) * thickness * contrast
						angle: - ( 90 / 180 ) * Math.PI
						distr: 0
				1:
					x: contours[3].nodes[0].expandedTo[0].x
					y: xHeight
					typeIn: 'line'
					expand:
						width: ( 47 / 80 ) * thickness * contrast
						angle: - ( 90 / 180 ) * Math.PI
						distr: 0
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x - 71 * width - (20)
					y: contours[2].nodes[1].y
					typeOut: 'line'
					expand:
						width: ( 80 / 80 ) * thickness
						angle: Math.PI
						distr: 0.25
				1:
					x: contours[3].nodes[0].x
					y: contours[0].nodes[1].y
					typeIn: 'line'
					expand:
						width: ( 80 / 80 ) * thickness
						angle: Math.PI
						distr: 0.25
	components:
		0:
			base: ['serif-horizontal', 'none']
			id: 'bottomleftbottom'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
			parameters:
				serifWidth: Math.min( ( 120 / 65 ) * serifWidth, serifWidth + 55 )
				serifHeight: Math.min( ( 90 / 50 ) * serifHeight, serifHeight + 40 )
				serifMedian: Math.max( 0.23 * serifMedian, serifMedian - 0.12 )
		1:
			base: ['serif-horizontal', 'none']
			id: 'bottomrightbottom'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
			parameters:
				serifWidth: Math.min( ( 120 / 65 ) * serifWidth, serifWidth + 55 )
				serifHeight: Math.min( ( 90 / 50 ) * serifHeight, serifHeight + 40 )
				serifMedian: Math.max( 0.23 * serifMedian, serifMedian - 0.12 )
		2:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[1].nodes[2].expandedTo[0]
					noneAnchor: contours[1].nodes[2].expandedTo[0]
					opposite: contours[1].nodes[2].expandedTo[1]
					reversed: true
			transformOrigin: contours[1].nodes[2].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		3:
			base: ['serif-vertical', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0]
					noneAnchor: contours[2].nodes[1].expandedTo[0]
					opposite: contours[2].nodes[1].expandedTo[1]
			transformOrigin: contours[2].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'scaleX', -1 ]
			)
