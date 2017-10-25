# TODO: contrast + width
exports.glyphs['seven'] =
	unicode: '7'
	glyphName: 'seven'
	characterName: 'DIGIT SEVEN'
	ot:
		advanceWidth: contours[0].nodes[2].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50
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
					x: spacingLeft
					y: capHeight
					typeOut: 'line'
					expand:
						width: ( 77 / 80 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
				1:
					x: Math.min(
						Utils.onLine({
							y: capHeight
							on: [ contours[1].nodes[0].expandedTo[1], contours[1].nodes[1].expandedTo[1] ]
						}),
						contours[0].nodes[2].x - thickness / 2
					)
					y: capHeight
					typeOut: 'line'
					expand:
						width: ( 77 / 80 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
				2:
					x: contours[0].nodes[0].x + 210 + 200 * width
					y: capHeight
					expand:
						width: ( 20 / 80 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: - 90 + 'deg'
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y
					dirOut: Utils.lineAngle({x: contours[1].nodes[0].expandedTo[1].x, y: contours[1].nodes[0].expandedTo[1].y}, {x: contours[1].nodes[1].expandedTo[1].x, y: contours[1].nodes[1].expandedTo[1].y}) - (2 / 180 * Math.PI)
					expand:
						width: ( 38 / 80 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: Math.acos( Math.min(1, contours[0].nodes[2].expand.width / contours[1].nodes[0].expand.width )) + Math.PI / 2
						distr: 0
				1:
					x: contours[0].nodes[0].x + 30 * width + (87/80) * thickness
					y: 0
					dirIn: 100 - 10 * width + 'deg'
					expand:
						width: ( 112 / 80 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
