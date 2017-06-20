exports.glyphs['o'] =
	unicode: 'o'
	glyphName: 'o'
	characterName: 'LATIN SMALL LETTER O'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 50
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: xHeight + diacriticHeight
			left: contours[0].nodes[0].expandedTo[0].x
			right: contours[0].nodes[2].expandedTo[0].x
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft + (23/80) * thickness
					y: ( 225 / 450 ) * xHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 92 / 80 ) * thickness
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1.1
					expand: Object({
						width: ( 44 / 80 ) * thickness * contrast
						angle: - 108 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 240 + 200 * width - (25),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 92 / 80 ) * thickness + 10
					)
					y: contours[0].nodes[0].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 92 / 80 ) * thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					tensionIn: 1.1
					expand: Object({
						width: ( 44 / 80 ) * thickness * contrast
						angle: 72 + 'deg'
						distr: 0
					})
