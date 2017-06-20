exports.glyphs['ring'] =
	glyphName: 'ring'
	characterName: 'RING ABOVE'
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
			closed: true
			nodes:
				0:
					x: anchors[0].x - ( 73 + ( 13 / 80 ) * thickness ) + (13/80) * thickness
					y: contours[0].nodes[3].expandedTo[0].y + ( contours[0].nodes[1].expandedTo[0].y - contours[0].nodes[3].expandedTo[0].y ) / 2 + (2/80) * thickness
					dirOut: 90 + 'deg'
					tensionIn: 0.9
					type: 'smooth'
					expand: Object({
						width: ( 50 / 80 ) * thickness
						angle: 8 + 'deg'
						distr: 0.25
					})
				1:
					x: anchors[0].x
					y: contours[0].nodes[3].expandedTo[0].y + ( 140 + ( 26 / 80 ) * thickness )
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 24 / 80 ) * thickness * contrast
						angle: - 95 + 'deg'
						distr: 0
					})
				2:
					x: anchors[0].x + ( 73 + ( 13 / 80 ) * thickness ) - (13/80) * thickness
					y: contours[0].nodes[0].expandedTo[0].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionOut: 0.9
					expand: Object({
						width: ( 50 / 80 ) * thickness
						angle: 190 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[1].x
					y: anchors[0].y
					dirOut: 180 + 'deg'
					tensionIn: 0.9
					tensionOut: 0.9
					type: 'smooth'
					expand: Object({
						width: ( 24 / 80 ) * thickness * contrast
						angle: 80 + 'deg'
						distr: 0
					})
