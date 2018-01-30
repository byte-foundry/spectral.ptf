exports.glyphs['spur-vertical'] =
	componentLabel: 'Spur'
	parameters:
		roundCorner: serifHeight # TODO: make a real param in controls.coffee
		serifWidth:
			if serifHeight < 0.05
			then serifWidth = 0.05
			else serifWidth = serifWidth
		serifHeight:
			if serifWidth < 0.05
			then serifHeight = 0
			else
				if serifWidth >= 0.05
				then Math.max(serifHeight, 3)
				else serifHeight = serifHeight
		serifCurve:
			if serifWidth < 0.05
			then serifCurve = 0
			else serifCurve = serifCurve
	anchors:
		0:
			x: parentAnchors[0].base.x
			y: parentAnchors[0].base.y - Math.max( 0, serifArc * serifHeight )
		1: parentAnchors[0].opposite.x - Math.abs( parentAnchors[0].opposite.x - parentAnchors[0].base.x ) * 0.2
		# 1:
		# 	if typeof parentAnchors[0].scale == 'undefined'
		# 	then parentAnchors[0].opposite.x - Math.abs( parentAnchors[0].opposite.x - parentAnchors[0].base.x ) * 0.2
		# 	else parentAnchors[0].opposite.x + Math.abs( parentAnchors[0].opposite.x - parentAnchors[0].base.x ) * 0.2
		2:
			rotate: parentAnchors[0].rotate || 0
			aperture: if typeof parentAnchors[0].aperture != 'undefined' then ( 5 / 90 ) * thickness * serifAperture else 0
	tags: [
		'component'
	]
	contours:
		0:
			exportReversed: parentAnchors[0].reversed == true
			closed: true
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y + serifHeight + serifCurve - (contours[0].nodes[7].x - contours[0].nodes[0].x) * Math.tan(anchors[2].rotate / 180 * Math.PI)
					dirOut:( - 90 ) / 180 * Math.PI
					tensionOut: serifRoundness
				1:
					x: anchors[0].x + Math.max(
						( contours[0].nodes[2].x - anchors[0].x ) * 0.85,
						- Math.abs( contours[0].nodes[0].y - ( anchors[0].y + serifHeight ) )
					)
					y: anchors[0].y + serifHeight - ( ( contours[0].nodes[1].x - anchors[0].x ) / (serifWidth || 0.01) ) * (serifMedian - 1) * serifHeight - (contours[0].nodes[7].x - contours[0].nodes[1].x) * Math.tan(anchors[2].rotate / 180 * Math.PI)
					dirIn: Utils.lineAngle({x: contours[0].nodes[1].x, y: contours[0].nodes[1].y}, {x: contours[0].nodes[2].x, y: contours[0].nodes[2].y})
					typeOut: 'line'
					tensionIn: serifRoundness
				2:
					x: anchors[0].x - serifWidth
					y: anchors[0].y + serifHeight * serifMedian - (contours[0].nodes[7].x - contours[0].nodes[2].x) * Math.tan(anchors[2].rotate / 180 * Math.PI)
					typeIn: 'line'
					type: 'smooth'
					tensionOut: serifTerminalCurve
				3:
					x: contours[0].nodes[4].x + ( contours[0].nodes[2].x - contours[0].nodes[4].x ) * 0.5 * ( 1 - ( ( contours[0].nodes[4].x + ( contours[0].nodes[2].x - contours[0].nodes[4].x ) * 0.5 - anchors[0].x ) / (serifWidth || 0.01) ) * ( serifMedian - 1 ) ) - serifTerminal * serifHeight
					y: contours[0].nodes[4].y + ( contours[0].nodes[2].y - contours[0].nodes[4].y ) * 0.5 * ( 1 - ( ( contours[0].nodes[4].x + ( contours[0].nodes[2].x - contours[0].nodes[4].x ) * 0.5 - anchors[0].x ) / (serifWidth || 0.01) ) * ( serifMedian - 1 ) )
					dirOut: Utils.lineAngle({x: contours[0].nodes[2].x, y: contours[0].nodes[2].y},{x: contours[0].nodes[4].x, y: contours[0].nodes[4].y})
					typeIn: 'smooth'
					tensionOut: serifTerminalCurve
					tensionIn: serifTerminalCurve
				4:
					x: anchors[0].x - serifWidth * midWidth
					y: anchors[0].y - (contours[0].nodes[7].x - contours[0].nodes[4].x) * Math.tan(anchors[2].rotate / 180 * Math.PI)
					typeIn: 'smooth'
					typeOut: 'line'
					tensionIn: serifTerminalCurve
					dirOut: 0
				5:
					# x: anchors[1] - anchors[2].aperture
					x: anchors[0].x + Math.abs( parentAnchors[0].opposite.x - parentAnchors[0].base.x ) * 0.8 - anchors[2].aperture
					y: anchors[0].y + serifArc * serifHeight
					typeIn: 'line'
					typeOut: 'line'
				6:
					# x: parentAnchors[0].opposite.x - anchors[2].aperture
					x: anchors[0].x + Math.abs( parentAnchors[0].opposite.x - parentAnchors[0].base.x ) - anchors[2].aperture
					y: anchors[0].y + serifArc * serifHeight
					dirIn: Math.PI
					typeOut: 'line'
				7:
					# x: parentAnchors[0].opposite.x
					x: anchors[0].x + Math.abs( parentAnchors[0].opposite.x - parentAnchors[0].base.x )
					y: contours[0].nodes[0].y
					typeOut: 'line'
