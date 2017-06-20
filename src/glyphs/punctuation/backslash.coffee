exports.glyphs['backslash'] =
	unicode: '\\'
	glyphName: 'backslash'
	characterName: 'REVERSE SOLIDUS'
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
		spacingLeft: 50 * spacing + 0
		spacingRight: 50 * spacing + 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x + 150
					y: ( 120 / 250 ) * descender
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					x: spacingLeft
					y: capHeight + 90
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
