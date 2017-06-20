exports.glyphs['equal'] =
	unicode: '='
	glyphName: 'equal'
	characterName: 'EQUALS SIGN'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 40
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: ( 272 / 450 ) * xHeight + 77 + (25/80) * thickness
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 80 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x + 200 * width + 220
					y: contours[0].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 80 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: ( 272 / 450 ) * xHeight - 77 - (25/80) * thickness
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 80 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[1].x
					y: contours[1].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 80 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.5
					})
