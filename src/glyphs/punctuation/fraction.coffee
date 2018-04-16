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
	anchors:
		0:
			x: 0
			y: 0
	parameters:
		spacingLeft: 50 * spacing + 10
		spacingRight: 50 * spacing + 10
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
						width: ( 28 / 54 ) * thickness * contrast
						angle: 0
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 100 * width + 49 + Math.max(162, 1.8 * thickness) + (1 - contrast) * thickness * 0.5
					y: capHeight
					typeIn: 'line'
					expand:
						width: ( 28 / 54 ) * thickness * contrast
						angle: 0
						distr: 0
