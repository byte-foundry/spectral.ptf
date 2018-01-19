exports.glyphs['hyphen'] =
	unicode: '-'
	glyphName: 'hyphen'
	characterName: 'HYPHEN-MINUS'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
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
					y: xHeight * ( 280 / 500 ) * crossbar
					typeOut: 'line'
					expand:
						width: ( 70 / 80 ) * thickness
						angle: Math.PI / 2
						distr: 0.5
				1:
					x: contours[0].nodes[0].x + 75 + 200 * width
					y: contours[0].nodes[0].y
					expand:
						width: ( 70 / 80 ) * thickness
						angle: Math.PI / 2
						distr: 0.5
