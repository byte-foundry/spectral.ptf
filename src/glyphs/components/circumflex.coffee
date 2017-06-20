exports.glyphs['circumflex'] =
	glyphName: 'circumflex'
	characterName: 'MODIFIER LETTER CIRCUMFLEX ACCENT'
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
					x: anchors[0].x - Math.min(15, ( 15 / 80 ) * thickness * contrast )
					y: anchors[0].y + 180 - (5)
					typeOut: 'line'
					expand: Object({
						width: ( 77 / 80 ) * thickness * Math.min( 1, Math.sqrt( 80 / thickness ) )
						angle: Utils.lineAngle( contours[0].nodes[0].point, contours[1].nodes[0].expandedTo[0].point )
						distr: 0
					})
				1:
					x: anchors[0].x - 100 - ( 20 + (20 / 80 * thickness ) ) * width
					y: anchors[0].y
					expand: Object({
						width: ( 12 / 80 ) * thickness * contrast * contrastExtremity
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x + 100 + ( 20 + (20 / 80 * thickness ) ) * width + (5)
					y: anchors[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 12 / 80 ) * thickness * contrast * contrastExtremity
						angle: 180 + 'deg'
						distr: 0.25
					})
				1:
					x: anchors[0].x + Math.min(15, ( 15 / 80 ) * thickness * contrast )
					y: contours[0].nodes[0].y
					expand: Object({
						width: ( 77 / 80 ) * thickness * Math.min( 1, Math.sqrt( 80 / thickness ) )
						angle: Utils.lineAngle( contours[1].nodes[1].point, contours[0].nodes[1].expandedTo[0].point )
						distr: 0
					})
		2:
			skeleton: false
			closed: true
			nodes:
				3:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					typeOut: 'line'
				2:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					typeOut: 'line'
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
				0:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
					typeOut: 'line'
