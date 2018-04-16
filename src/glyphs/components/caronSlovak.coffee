exports.glyphs['caronSlovak'] =
	glyphName: 'caron slovak'
	characterName: 'CARON SLOVAK'
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
	tags: [
		'component',
		'diacritic'
	]
	transformOrigin: contours[0].nodes[0].expandedTo[1]
	transforms: Array(
		['translateX', - contours[0].nodes[0].expand.width ]
	)
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					type: 'smooth'
					expand:
						width: ( 75 / 80 ) * thickness
						angle: Math.PI
						distr: 0.75
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					type: 'smooth'
					typeOut: 'line'
					expand:
						width: ( (Math.max( 91 * contrast, 75 )) / 80 ) * thickness
						angle: Utils.lineAngle(
						        { x: contours[0].nodes[2].expandedTo[0].x, y: contours[0].nodes[2].expandedTo[0].y },
						        { x: contours[0].nodes[0].expandedTo[0].x, y: contours[0].nodes[0].expandedTo[0].y }
						    ) * ( 4 / 5 ) + Math.PI / 2
						distr: 1
				2:
					x: contours[0].nodes[0].expandedTo[1].x - 21 * width
					y: contours[0].nodes[0].expandedTo[1].y - 187
					typeIn: 'line'
					expand:
						width: ( 12 / 80 ) * thickness * contrast * contrastExtremity
						angle: Math.PI
						distr: 0.75
