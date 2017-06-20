exports.glyphs['plus'] =
	unicode: '+'
	glyphName: 'plus'
	characterName: 'PLUS SIGN'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 40
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: Math.max(
						( 272 / 450 ) * xHeight,
						( contours[1].nodes[0].y - contours[1].nodes[1].y ) / 2 + 0.5 * ( 50 / 80 ) * thickness
					)
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 80 ) * thickness
						angle: 90 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x + ( contours[1].nodes[0].y - contours[1].nodes[1].y )
					y: contours[0].nodes[0].y
					expand: Object({
						width: ( 50 / 80 ) * thickness
						angle: 90 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].x
					y: xHeight + Math.max( 32, ( 32 / 450 ) * xHeight )
					typeOut: 'line'
					expand: Object({
						width: ( 52 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: ( contours[0].nodes[1].x + contours[0].nodes[0].x ) / 2
					y: Math.max(
						52,
						( 52 / 450 ) * xHeight
					)
					typeOut: 'line'
					expand: Object({
						width: ( 52 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
