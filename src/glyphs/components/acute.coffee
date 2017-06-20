exports.glyphs['acute'] =
	glyphName: 'acute'
	characterName: 'ACUTE ACCENT'
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
			position: if typeof parentAnchors[0].position != 'undefined' then parentAnchors[0].position else 0.5
	tags: [
		'component',
		'diacritic'
	]
	# transforms: Array(
	# 	['translate', ( contours[0].nodes[0].expandedTo[0].x - contours[2].nodes[1].x ) * anchors[0].position ]
	# )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x + (3)
					y: anchors[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 12 / 80 ) * thickness * contrast * contrastExtremity
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[2].expandedTo[0].y
					type: 'smooth'
					expand: Object({
						width: ( 80 / 80 ) * thickness
						angle: - Math.max( 50 * contrast, 0 ) + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[0].expandedTo[0].x + 87 * width
					y: contours[0].nodes[0].expandedTo[0].y + 177
					type: 'smooth'
					expand: Object({
						width: ( 80 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
