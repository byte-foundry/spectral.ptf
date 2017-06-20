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
	transformOrigin: contours[0].nodes[0].expandedTo[1].point
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
					expand: Object({
						width: ( 75 / 80 ) * thickness
						angle: 180 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: ( (Math.max( 91 * contrast, 75 )) / 80 ) * thickness
						angle: 180 - Math.max( 46 * contrast, 0 ) + 'deg'
						distr: 1
					})
				2:
					x: contours[0].nodes[0].expandedTo[1].x - 21 * width
					y: contours[0].nodes[0].expandedTo[1].y - 187
					typeIn: 'line'
					expand: Object({
						width: ( 12 / 80 ) * thickness * contrast * contrastExtremity
						angle: 180 + 'deg'
						distr: 0.75
					})
