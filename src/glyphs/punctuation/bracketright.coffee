exports.glyphs['bracketright'] =
	unicode: ']'
	glyphName: 'bracketright'
	characterName: 'RIGHT SQUARE BRACKET'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 5
		spacingRight: 50 * spacing + 65
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
					x: 100 + 16 * width + (17/80) * thickness
					y: capHeight + ( 80 / 660 ) * capHeight
					typeOut: 'line'
					expand:
						width: ( 62 / 80 ) * thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: ( 150 / 250 ) * descender
					typeOut: 'line'
					expand:
						width: ( 62 / 80 ) * thickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					typeOut: 'line'
					expand:
						width: ( 23 / 80 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: spacingLeft
					y: contours[1].nodes[0].y
					typeOut: 'line'
					expand:
						width: ( 23 / 80 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					typeOut: 'line'
					expand:
						width: ( 23 / 80 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 1
				1:
					x: contours[1].nodes[1].x
					y: contours[2].nodes[0].y
					typeOut: 'line'
					expand:
						width: ( 23 / 80 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 1
