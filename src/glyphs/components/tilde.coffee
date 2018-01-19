exports.glyphs['tilde'] =
	glyphName: 'asciitilde'
	characterName: 'TILDE'
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
					x: anchors[0].x - 67 - 85 * width + (3)
					y: anchors[0].y
					dirOut:( 72 ) / 180 * Math.PI
					expand:
						width: ( 13 / 80 ) * thickness * contrast * contrastExtremity
						angle: Math.PI
						distr: 0.75
				1:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * ( 95 / 305 ) - (9/80) * thickness
					y: contours[0].nodes[3].y - (25)
					dirOut: 0
					type: 'smooth'
					tensionIn: 1.5
					expand:
						width: ( 63 / 80 ) * thickness
						angle:( 180 - 90 - 22 ) / 180 * Math.PI
						distr: 0.6
				2:
					x: contours[0].nodes[3].expandedTo[0].x - ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * ( 95 / 305 ) + (9/80) * thickness
					y: contours[0].nodes[0].y + (23)
					dirOut: 0
					type: 'smooth'
					tensionOut: 1.5
					expand:
						width: ( 63 / 80 ) * thickness
						angle:( 180 - 90 - 22 ) / 180 * Math.PI
						distr: 0.4
				3:
					x: anchors[0].x + 67 + 85 * width - (3)
					y: contours[0].nodes[0].expandedTo[0].y + 100 + Math.min( 25, ( 25 / 80 ) * thickness )
					dirIn:( - 90 - 18 ) / 180 * Math.PI
					expand:
						width: ( 13 / 80 ) * thickness * contrast * contrastExtremity
						angle: Math.PI
						distr: 0.25
