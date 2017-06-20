exports.glyphs['emdash'] =
	unicode: '—'
	glyphName: 'emdash'
	characterName: 'EM DASH'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 50
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
					y: xHeight * ( 297 / 500 ) * crossbar
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 80 ) * thickness
						angle: 90 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x + 700 + 200 * width
					y: contours[0].nodes[0].y
					expand: Object({
						width: ( 50 / 80 ) * thickness
						angle: 90 + 'deg'
						distr: 0.5
					})
