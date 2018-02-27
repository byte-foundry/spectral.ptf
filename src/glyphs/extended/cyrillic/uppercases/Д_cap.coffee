exports.glyphs['Д_cap'] =
	unicode: 'Д'
	glyphName: 'Д'
	characterName: 'CYRILLIC CAPITAL LETTER DE'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 25
		spacingRight: 50 * spacing + 55
	tags: [
		'all',
		'cyrillic',
		'uppercase'
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
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: ( 90 / 180 ) * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[0].x + 344 + 300 * width
					y: contours[0].nodes[0].y
					typeIn: 'line'
					expand:
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: ( 90 / 180 ) * Math.PI
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x + 25 + 50 * width + (16)
					y: contours[0].nodes[0].expandedTo[1].y
					dirOut: Utils.lineAngle( { x: contours[1].nodes[0].expandedTo[0].x, y: contours[1].nodes[0].expandedTo[0].y },{ x: contours[1].nodes[1].expandedTo[0].x, y: contours[1].nodes[1].expandedTo[0].y } ) - ( 10 / 180 ) * Math.PI
					# typeIn: 'smooth'
					expand:
						width: ( 64 / 80 ) * thickness * opticThickness * contrast
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x + 100 + 50 * width + (15)
					y: contours[2].nodes[1].expandedTo[1].y - 48
					dirIn: - ( 90 / 180 ) * Math.PI
					typeOut: 'line'
					expand:
						width: ( 60 / 80 ) * thickness * opticThickness * contrast
						angle: 0
						distr: 0.25
				2:
					x: contours[1].nodes[1].expandedTo[0].x
					y: capHeight
					typeIn: 'line'
					expand:
						width: ( 60 / 80 ) * thickness * opticThickness * contrast
						angle: 0
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[0].x
					y: capHeight
					typeOut: 'line'
					expand:
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: - ( 90 / 180 ) * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[1].x - 94 * width - (22)
					y: capHeight
					typeIn: 'line'
					expand:
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: - ( 90 / 180 ) * Math.PI
						distr: 0
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[2].nodes[1].x
					y: contours[2].nodes[1].y
					typeOut: 'line'
					expand:
						width: ( 90 / 80 ) * thickness * opticThickness
						angle: Math.PI
						distr: 0.25
				1:
					x: contours[3].nodes[0].x
					y: contours[0].nodes[1].y
					typeIn: 'line'
					expand:
						width: ( 90 / 80 ) * thickness * opticThickness
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
				serifWidth: Math.min( ( 145 / 65 ) * serifWidth, serifWidth + 90 ) + 25
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
				serifWidth: Math.min( ( 145 / 65 ) * serifWidth, serifWidth + 90 ) + 25
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
			parameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
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
			parameters:
				serifWidth: Math.min( ( 100 / 65 ) * serifWidth, serifWidth + 35 )
				serifHeight: Math.min( ( 60 / 50 ) * serifHeight, serifHeight + 10 )
