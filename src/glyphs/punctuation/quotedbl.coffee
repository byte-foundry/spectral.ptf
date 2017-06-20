exports.glyphs['quotedbl'] =
	unicode: '"'
	glyphName: 'quotedbl'
	characterName: 'QUOTATION MARK'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 80
		spacingRight: 50 * spacing + 80
		thickness: Math.max( 40, Math.min( 120, thickness ))
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
					x: spacingLeft + (45/80) * thickness
					y: capHeight + 80
					typeOut: 'line'
					expand: Object({
						width: ( 90 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y - 100 - Math.min( 150, ( 150 / 80 ) * thickness )
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 20 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 110 + (45/80) * thickness
					y: contours[0].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 90 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[1].nodes[0].x
					y: contours[0].nodes[1].y
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 20 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
