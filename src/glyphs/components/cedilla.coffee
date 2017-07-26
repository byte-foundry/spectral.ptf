exports.glyphs['cedilla'] =
	glyphName: 'cedilla'
	characterName: 'CEDILLA'
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
	tags: [
		'component',
		'diacritic'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 35 / 80 ) * thickness * contrast
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x - 57 * width
					y: contours[0].nodes[0].expandedTo[0].y - 123
					typeOut: 'line'
					expand: Object({
						width: ( 32 / 80 ) * thickness * contrast
						angle: Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].point ) + Math.PI / 2
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirOut: Math.max(
						Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[1].expandedTo[1].point ) + ( 7 / 180 * Math.PI ),
						Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].point ) + ( ( 2 * width ) / 180 * Math.PI )
					)
					type: 'smooth'
					expand: Object({
						width: ( 66 / 80 ) * thickness
						angle: Utils.lineAngle( contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[0].point )
						distr: 0
					})
				1:
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x + 131 * width - (27),
						contours[0].nodes[1].expandedTo[1].x + 70
					)
					y: contours[1].nodes[2].y + ( contours[1].nodes[0].expandedTo[1].y - contours[1].nodes[2].y ) * ( 85 / 191 )
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 62 / 80 ) * thickness
						angle: 180 - 165 + 'deg'
						distr: 0.75
					})
				2:
					x: contours[0].nodes[0].expandedTo[0].x + 7
					y: - 240 # TODO
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 35 / 90 ) * thickness * contrast
						angle: 180 + 117 + 'deg'
						distr: 1
					})
				3:
					x: contours[0].nodes[1].expandedTo[0].x - 20
					y: Math.max(
						contours[1].nodes[2].expandedTo[0].y + 5,
						contours[1].nodes[2].expandedTo[1].y + 25
					)
					dirIn: Utils.lineAngle( contours[1].nodes[3].point, contours[1].nodes[2].point ) - ( 20 / 180 * Math.PI )
					expand: Object({
						width: ( 12 / 90 ) * thickness * contrast
						angle: 180 + 90 + 'deg'
						distr: 1
					})
