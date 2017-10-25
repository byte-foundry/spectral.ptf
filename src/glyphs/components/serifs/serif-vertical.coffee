exports.glyphs['serif-vertical'] =
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
		1:
			x: parentAnchors[0].base.x + Math.abs( parentAnchors[0].opposite.x - parentAnchors[0].base.x ) * 0.5
		2:
			rotate: parentAnchors[0].rotate || 0
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
					y: anchors[0].y + serifHeight + serifCurve
					dirOut: - 90 + 'deg'
					tensionOut: serifRoundness
					transformOrigin: {x: contours[0].nodes[5].x, y: contours[0].nodes[5].y}
					transforms: Array([ 'skewY', anchors[2].rotate + 'deg' ])
				1:
					x: anchors[0].x + Math.max(
						( contours[0].nodes[2].x - anchors[0].x ) * 0.85,
						- Math.abs( contours[0].nodes[0].y - ( anchors[0].y + serifHeight ) )
					)
					y: anchors[0].y + serifHeight - ( ( contours[0].nodes[1].x - anchors[0].x ) / (serifWidth || 0.01) ) * (serifMedian - 1) * serifHeight
					dirIn: Utils.lineAngle({x: contours[0].nodes[1].x, y: contours[0].nodes[1].y}, {x: contours[0].nodes[2].x, y: contours[0].nodes[2].y})
					typeOut: 'line'
					tensionIn: serifRoundness
					transformOrigin: {x: contours[0].nodes[5].x, y: contours[0].nodes[5].y}
					transforms: Array([ 'skewY', anchors[2].rotate + 'deg' ])
				2:
					x: anchors[0].x - serifWidth
					y: anchors[0].y + serifHeight * serifMedian
					typeIn: 'line'
					type: 'smooth'
					tensionOut: serifTerminalCurve
					transformOrigin: {x: contours[0].nodes[5].x, y: contours[0].nodes[5].y}
					transforms: Array([ 'skewY', anchors[2].rotate + 'deg' ])
				3:
					x: contours[0].nodes[4].x + ( contours[0].nodes[2].x - contours[0].nodes[4].x ) * 0.5 * ( 1 - ( ( contours[0].nodes[4].x + ( contours[0].nodes[2].x - contours[0].nodes[4].x ) * 0.5 - anchors[0].x ) / (serifWidth || 0.01) ) * ( serifMedian - 1 ) ) - serifTerminal * serifHeight
					y: contours[0].nodes[4].y + ( contours[0].nodes[2].y - contours[0].nodes[4].y ) * 0.5 * ( 1 - ( ( contours[0].nodes[4].x + ( contours[0].nodes[2].x - contours[0].nodes[4].x ) * 0.5 - anchors[0].x ) / (serifWidth || 0.01) ) * ( serifMedian - 1 ) )
					dirOut: Utils.lineAngle({x: contours[0].nodes[2].x, y: contours[0].nodes[2].y},{x: contours[0].nodes[4].x, y: contours[0].nodes[4].y})
					type: 'smooth'
					tensionOut: serifTerminalCurve
					tensionIn: serifTerminalCurve
					transformOrigin: {x: contours[0].nodes[5].x, y: contours[0].nodes[5].y}
					transforms: Array([ 'skewY', anchors[2].rotate + 'deg' ])
				4:
					x: anchors[0].x - serifWidth * midWidth
					y: anchors[0].y
					type: 'smooth'
					tensionIn: serifTerminalCurve
					dirOut: 0 + 'deg'
					transformOrigin: {x: contours[0].nodes[5].x, y: contours[0].nodes[5].y}
					transforms: Array([ 'skewY', anchors[2].rotate + 'deg' ])
				5:
					x: anchors[1].x
					y: anchors[0].y + serifArc * serifHeight
					dirIn: 180 + 'deg'
					typeOut: 'line'
					transformOrigin: {x: contours[0].nodes[5].x, y: contours[0].nodes[5].y}
					transforms: Array([ 'skewY', anchors[2].rotate + 'deg' ])
				6:
					x: contours[0].nodes[5].x
					y: contours[0].nodes[0].y
					typeOut: 'line'
