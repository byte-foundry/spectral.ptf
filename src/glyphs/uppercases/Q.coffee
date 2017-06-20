exports.glyphs['Q'] =
	unicode: 'Q'
	glyphName: 'Q'
	characterName: 'LATIN CAPITAL LETTER Q'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 70
		spacingRight: 50 * spacing + 70
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + diacriticHeight
			left: contours[0].nodes[0].expandedTo[0].x
			right: contours[0].nodes[2].expandedTo[0].x
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft + (24/80) * thickness * opticThickness
					y: ( 330 / 660 ) * capHeight + (7)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 102 / 80 ) * thickness * opticThickness
						angle: 20 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 52 / 80 ) * thickness * opticThickness * contrast
						angle: - 110 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 465 + 200 * width - (22),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 102 / 80 ) * thickness * opticThickness + 10
					)
					y: contours[0].nodes[0].expandedTo[0].y - (9)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 102 / 80 ) * thickness * opticThickness
						angle: 200 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 54 / 80 ) * thickness * opticThickness * contrast
						angle: 68 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].x + ( 65 / 80 ) * thickness * opticThickness + (20)
					y: contours[1].nodes[1].expandedTo[1].y
					dirOut: - 150 + 'deg'
					expand: Object({
						width: ( 15 / 80 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0.4
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x + 5 * width - (20)
					y: ( 115 / 250 ) * descender - (12)
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 70 / 80 ) * thickness * opticThickness
						angle: 180 - 152 + 'deg'
						distr: 0.65
					})
				2:
					x: contours[0].nodes[3].x
					y: contours[0].nodes[3].expandedTo[0].y + ( contours[0].nodes[3].expandedTo[1].y - contours[0].nodes[3].expandedTo[0].y ) * 0.5
					dirIn: Math.max( - 90, ( 45 / 250 ) * descender ) + 'deg'
					type: 'smooth'
					expand: Object({
						width: Math.min( thickness * opticThickness * contrast + 55, ( 135 / 80 ) * thickness * opticThickness * contrast )
						angle: 0 + 'deg'
						distr: 0.4
					})
