exports.glyphs['ring'] =
	global: true
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
					dirOut: Math.PI / 2
					tensionIn: 0.9
					type: 'smooth'
					expand:
						width: ( 50 / 80 ) * thickness
						angle:( 8 ) / 180 * Math.PI
						distr: 0.25
				1:
					x: anchors[0].x
					y: contours[0].nodes[3].expandedTo[0].y + ( 140 + ( 26 / 80 ) * thickness )
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 24 / 80 ) * thickness * contrast
						angle:( - 95 ) / 180 * Math.PI
						distr: 0
				2:
					x: anchors[0].x + ( 73 + ( 13 / 80 ) * thickness ) - (13/80) * thickness
					y: contours[0].nodes[0].expandedTo[0].y
					dirOut:( - 90 ) / 180 * Math.PI
					type: 'smooth'
					tensionOut: 0.9
					expand:
						width: ( 50 / 80 ) * thickness
						angle:( 190 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[1].x
					y: anchors[0].y
					dirOut: Math.PI
					tensionIn: 0.9
					tensionOut: 0.9
					type: 'smooth'
					expand:
						width: ( 24 / 80 ) * thickness * contrast
						angle:( 80 ) / 180 * Math.PI
						distr: 0
