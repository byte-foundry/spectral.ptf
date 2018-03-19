exports.glyphs['cedilla'] =
	global: true
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
					expand:
						width: ( 35 / 80 ) * thickness * contrast
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x - 57 * width
					y: contours[0].nodes[0].expandedTo[0].y - 123
					typeOut: 'line'
					expand:
						width: ( 32 / 80 ) * thickness * contrast
						angle: Utils.lineAngle({x: contours[0].nodes[0].expandedTo[0].x, y: contours[0].nodes[0].expandedTo[0].y}, {x: contours[0].nodes[1].x, y: contours[0].nodes[1].y}) + Math.PI / 2
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirOut: Math.max(
						Utils.lineAngle({x: contours[0].nodes[1].expandedTo[0].x, y: contours[0].nodes[1].expandedTo[0].y}, {x: contours[0].nodes[1].expandedTo[1].x, y: contours[0].nodes[1].expandedTo[1].y}) + (7 / 180 * Math.PI),
						Utils.lineAngle({x: contours[1].nodes[0].x, y: contours[1].nodes[0].y}, {x: contours[1].nodes[1].x, y: contours[1].nodes[1].y}) + ((2 * width) / 180 * Math.PI)
					)
					expand:
						width: ( 66 / 80 ) * thickness
						angle: Utils.lineAngle({x: contours[0].nodes[1].expandedTo[1].x, y: contours[0].nodes[1].expandedTo[1].y}, {x: contours[0].nodes[0].expandedTo[0].x, y: contours[0].nodes[0].expandedTo[0].y})
						distr: 0
				1:
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x + 131 * width - (27),
						contours[0].nodes[1].expandedTo[1].x + 70
					)
					y: contours[1].nodes[2].y + ( contours[1].nodes[0].expandedTo[1].y - contours[1].nodes[2].y ) * ( 85 / 191 )
					dirOut:( - 90 ) / 180 * Math.PI
					type: 'smooth'
					expand:
						width: ( 62 / 80 ) * thickness
						angle:( 180 - 165 ) / 180 * Math.PI
						distr: 0.75
				2:
					x: contours[0].nodes[0].expandedTo[0].x + 7
					y: - 240 # TODO
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 35 / 90 ) * thickness * contrast
						angle:( 180 + 117 ) / 180 * Math.PI
						distr: 1
				3:
					x: contours[0].nodes[1].expandedTo[0].x - 20
					y: Math.max(
						contours[1].nodes[2].expandedTo[0].y + 5,
						contours[1].nodes[2].expandedTo[1].y + 25
					)
					dirIn: Utils.lineAngle({x: contours[1].nodes[3].x, y: contours[1].nodes[3].y}, {x: contours[1].nodes[2].x, y: contours[1].nodes[2].y}) - (20 / 180 * Math.PI)
					expand:
						width: ( 12 / 90 ) * thickness * contrast
						angle:( 180 + 90 ) / 180 * Math.PI
						distr: 1
