exports.glyphs['serif-horizontal'] =
	componentLabel: 'Serif'
	parameters:
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
			y: parentAnchors[0].base.y
			x: parentAnchors[0].base.x + Math.max( 0, serifArc * serifHeight )
		1:
			y: parentAnchors[0].base.y + Math.abs( parentAnchors[0].opposite.y - parentAnchors[0].base.y ) * 0.5
		2:
			rotate: parentAnchors[0].rotate || 0
	tags: [
		'component'
	]
	transformOrigin: Object({x: anchors[0].x - serifArc * serifHeight, y: anchors[1].y})
	transforms: Array([ 'skewX',( anchors[2].rotate ) / 180 * Math.PI ])
	contours:
		0:
			exportReversed: parentAnchors[0].reversed == true
			closed: true
			nodes:
				0:
					y: anchors[0].y
					x: anchors[0].x - ( serifHeight + serifCurve )
					dirOut: Math.PI
					tensionOut: serifRoundness
				1:
					y: anchors[0].y + Math.max(
						( contours[0].nodes[2].y - anchors[0].y ) * 0.85,
						- Math.abs( contours[0].nodes[0].x - ( anchors[0].x - serifHeight ) )
					)
					x: anchors[0].x - ( serifHeight - ( ( contours[0].nodes[1].y - anchors[0].y ) / (serifWidth || 0.01) ) * (serifMedian - 1) * serifHeight )
					dirIn: Utils.lineAngle({x: contours[0].nodes[1].x, y: contours[0].nodes[1].y}, {x: contours[0].nodes[2].x, y: contours[0].nodes[2].y})
					typeOut: 'line'
					tensionIn: serifRoundness
				2:
					y: anchors[0].y - serifWidth
					x: anchors[0].x - ( serifHeight * serifMedian )
					typeIn: 'line'
					type: 'smooth'
					tensionOut: serifTerminalCurve
				3:
					y: contours[0].nodes[4].y + ( contours[0].nodes[2].y - contours[0].nodes[4].y ) * 0.5 * ( 1 - ( ( contours[0].nodes[4].y + ( contours[0].nodes[2].y - contours[0].nodes[4].y ) * 0.5 - anchors[0].y ) / (serifWidth || 0.01) ) * ( serifMedian - 1 ) ) - serifTerminal * serifHeight
					x: contours[0].nodes[4].x + ( contours[0].nodes[2].x - contours[0].nodes[4].x ) * 0.5 * ( 1 - ( ( contours[0].nodes[4].y + ( contours[0].nodes[2].y - contours[0].nodes[4].y ) * 0.5 - anchors[0].y ) / (serifWidth || 0.01) ) * ( serifMedian - 1 ) )
					dirOut: Utils.lineAngle({x: contours[0].nodes[2].x, y: contours[0].nodes[2].y},{x: contours[0].nodes[4].x, y: contours[0].nodes[4].y})
					type: 'smooth'
					tensionOut: serifTerminalCurve
					tensionIn: serifTerminalCurve
				4:
					y: anchors[0].y - serifWidth * midWidth
					x: anchors[0].x
					type: 'smooth'
					tensionIn: serifTerminalCurve
					dirOut: Math.PI / 2
				5:
					y: anchors[1].y
					x: anchors[0].x - serifArc * serifHeight
					dirIn:( - 90 ) / 180 * Math.PI
					typeOut: 'line'
				6:
					y: contours[0].nodes[5].y
					x: contours[0].nodes[0].x
					typeOut: 'line'
