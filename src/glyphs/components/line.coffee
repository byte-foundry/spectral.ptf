exports.glyphs['line'] =
	characterName: 'VERTICAL LINE'
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
	tags: [
		'component'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x
					y: parentAnchors[0].y + 70
					typeOut: 'line'
					expand:
						width: ( 41 / 80 ) * thickness
						angle: 0
						distr: 0.5
				1:
					x: contours[0].nodes[0].x
					y: - 80
					typeOut: 'line'
					expand:
						width: ( 41 / 80 ) * thickness
						angle: 0
						distr: 0.5
