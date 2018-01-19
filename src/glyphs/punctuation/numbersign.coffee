exports.glyphs['numbersign'] =
	unicode: '#'
	glyphName: 'numbersign'
	characterName: 'NUMBER SIGN'
	ot:
		advanceWidth: contours[1].nodes[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	tags: [
		'all',
		'latin',
		'punctuation'
		'test'
	]
	parameters:
		spacingLeft: 50 * spacing + 0
		spacingRight: 50 * spacing + 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				1:
					x: spacingLeft
					y: Math.max(
						Math.min(
							( 225 / 450 ) * xHeight,
							xHeight - ( 47 / 80 ) * thickness * 1.5 - 10
						),
						capHeight - xHeight
					)
					typeOut: 'line'
					expand:
						width: ( 47 / 80 ) * thickness
						angle: Math.PI / 2
						distr: 0.5
				0:
					x: contours[0].nodes[1].x + 200 * width + 240
					y: contours[0].nodes[1].y
					typeIn: 'line'
					expand:
						width: ( 47 / 80 ) * thickness
						angle: Math.PI / 2
						distr: 0.5
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x + ( contours[1].nodes[1].x - contours[0].nodes[0].x )
					y: xHeight
					typeOut: 'line'
					expand:
						width: ( 47 / 80 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[0].x + Math.min(
						58 * width,
						58
					)
					y: xHeight
					typeIn: 'line'
					expand:
						width: ( 47 / 80 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x + 39 * width + (12)
					y: 0
					typeOut: 'line'
					expand:
						width: Math.min( ( 50 / 80 ) * thickness * contrast, minThickness )
						angle: 0
						distr: 0.25
				1:
					x: contours[2].nodes[0].expandedTo[0].x + Math.min(
						192 * width,
						192
					)
					y: Math.max(
						capHeight,
						xHeight + minThickness
					)
					typeIn: 'line'
					expand:
						width: Math.min( ( 50 / 80 ) * thickness * contrast, minThickness )
						angle: 0
						distr: 0
		3:
			skeleton: true
			closed: false
			nodes:
				1:
					x: contours[1].nodes[1].expandedTo[0].x - ( contours[2].nodes[0].expandedTo[0].x - contours[0].nodes[1].x ) - ( 25 / 80 ) * thickness
					y: contours[2].nodes[1].y
					typeIn: 'line'
					expand:
						width: Math.min( ( 50 / 80 ) * thickness * contrast, minThickness )
						angle: 0
						distr: 0.5
				0:
					x: contours[0].nodes[0].expandedTo[0].x - ( contours[2].nodes[1].expandedTo[0].x - contours[1].nodes[0].x ) - ( 25 / 80 ) * thickness
					y: 0
					typeOut: 'line'
					expand:
						width: Math.min( ( 50 / 80 ) * thickness * contrast, minThickness )
						angle: 0
						distr: 0.5
