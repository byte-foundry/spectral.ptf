exports.glyphs['bar'] =
	unicode: '|'
	glyphName: 'bar'
	characterName: 'VERTICAL LINE'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 100
		spacingRight: 50 * spacing + 100
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: descender - overshoot
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: ascenderHeight + overshoot
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
