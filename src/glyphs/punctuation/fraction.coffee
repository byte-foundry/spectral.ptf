exports.glyphs['fraction'] =
	unicode: '⁄'
	glyphName: 'fraction'
	characterName: 'FRACTION SLASH'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 30
		spacingRight: 50 * spacing + 12
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
						width: ( 42 / 80 ) * thickness * contrast
						angle: Utils.lineAngle(
						        { x: contours[0].nodes[0].x, y: contours[0].nodes[0].y },
						        { x: contours[0].nodes[1].x, y: contours[0].nodes[1].y }
						    ) + Math.PI / 2
						distr: 0.5
				1:
					x: contours[0].nodes[0].x + 365 + 100 * width
					y: ascenderHeight
					typeIn: 'line'
					expand:
						width: ( 42 / 80 ) * thickness * contrast
						angle: Utils.lineAngle(
						        { x: contours[0].nodes[0].x, y: contours[0].nodes[0].y },
						        { x: contours[0].nodes[1].x, y: contours[0].nodes[1].y }
						    ) + Math.PI / 2
						distr: 0.5
