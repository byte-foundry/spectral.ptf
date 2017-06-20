exports.glyphs['slash'] =
	unicode: '/'
	glyphName: 'slash'
	characterName: 'SOLIDUS'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 0
		spacingRight: 50 * spacing + 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: ( 120 / 250 ) * descender
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 200
					y: capHeight + 90
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
