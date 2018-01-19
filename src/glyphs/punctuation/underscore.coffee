exports.glyphs['underscore'] =
	unicode: '_'
	glyphName: 'underscore'
	characterName: 'LOW LINE'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 25
		spacingRight: 50 * spacing + 25
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
					y: - 90 - (10)
					dirOut: Math.PI / 2
					typeOut: 'line'
					expand:
						width: ( 50 / 80 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0.2
				1:
					x: contours[0].nodes[0].x + 250 + 200 * width
					y: contours[0].nodes[0].y
					dirOut: Math.PI / 2
					typeOut: 'line'
					expand:
						width: ( 50 / 80 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0.2
