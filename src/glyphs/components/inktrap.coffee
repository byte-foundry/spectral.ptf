exports.glyphs['inktrap'] =
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
	tags: [
		'component'
	]
	contours:
		0:
			skeleton: false
			closed: true
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					typeOut: 'line'
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y + 21
					typeOut: 'line'
				2:
					x: contours[0].nodes[1].x + 23
					y: contours[0].nodes[1].y
					typeOut: 'line'
