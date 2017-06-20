# TODO: width
exports.glyphs['eight'] =
	unicode: '8'
	glyphName: 'eight'
	characterName: 'DIGIT EIGHT'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 40
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[4].x
					y: contours[0].nodes[4].y
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 35 / 80 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: Utils.lineAngle( contours[0].nodes[4].expandedTo[0].point, contours[0].nodes[4].expandedTo[1].point ) + Math.PI / 2
						distr: 0.2
					})
				1:
					x: spacingLeft + (23/80) * thickness
					y: ( 145 / 660 ) * capHeight + (6)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 94 / 80 ) * thickness * opticThickness * contrast
						angle: 15 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) * ( 210 / 420 )
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 43 / 80 ) * thickness * opticThickness * contrast
						angle: 82 + 'deg'
						distr: 0
					})
				3:
					x: contours[0].nodes[1].expandedTo[0].x + 200 * width + 220 - (28)
					y: ( 170 / 660 ) * capHeight - (7)
					dirIn: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 88 / 80 ) * thickness * opticThickness
						angle: - 160 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[5].expandedTo[1].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[5].expandedTo[1].x ) * 0.5
					y: contours[0].nodes[5].expandedTo[1].y + ( contours[0].nodes[3].expandedTo[0].y - contours[0].nodes[5].expandedTo[1].y ) * 0.5
					dirOut: ( Math.max(
						Math.min(
							180 - ( 25 / 80 ) * thickness * opticThickness + 10 * width - 10,
							180
						),
						155
					) * Math.PI / 180 )
					type: 'smooth'
					tensionIn: 1.1
					tensionOut: 1.2
					expand: Object({
						width: ( 93 / 80 ) * thickness * opticThickness
						angle: contours[0].nodes[4].dirOut + Math.PI / 2
						distr: 0.5
					})
				5:
					x: contours[0].nodes[1].expandedTo[0].x + 17 + (19)
					y: ( 500 / 660 ) * capHeight + (8)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 94 / 80 ) * thickness * opticThickness
						angle: 180 + 19 + 'deg'
						distr: 0.75
					})
				6:
					x: contours[0].nodes[5].expandedTo[1].x + ( contours[0].nodes[7].expandedTo[1].x - contours[0].nodes[5].expandedTo[1].x ) * ( 195 / 385 )
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 47 / 80 ) * thickness * opticThickness * contrast
						angle: 180 - 102 + 'deg'
						distr: 1
					})
				7:
					x: contours[0].nodes[3].expandedTo[0].x - 16 - (16/80) * thickness
					y: ( 500 / 660 ) * capHeight
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 87 / 80 ) * thickness * opticThickness * contrast
						angle: 180 - 176 + 'deg'
						distr: 0.75
					})
				8:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					dirIn: 0 + 'deg'
					expand: Object({
						width: ( 37 / 80 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: Utils.lineAngle( contours[0].nodes[4].expandedTo[0].point, contours[0].nodes[4].expandedTo[1].point ) + Math.PI / 2
						distr: 1
					})
