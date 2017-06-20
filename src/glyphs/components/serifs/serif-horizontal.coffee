exports.glyphs['serif-horizontal'] =
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
		1: parentAnchors[0].base.y + Math.abs( parentAnchors[0].opposite.y - parentAnchors[0].base.y ) * 0.5
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
					y: anchors[0].y
					x: anchors[0].x - ( serifHeight + serifCurve )
					dirOut: 180 + 'deg'
					tensionOut: serifRoundness
					transformOrigin: contours[0].nodes[5].point
					transforms: Array([ 'skewX', anchors[2].rotate + 'deg' ])
				1:
					y: anchors[0].y + Math.max(
						( contours[0].nodes[2].y - anchors[0].y ) * 0.85,
						- Math.abs( contours[0].nodes[0].x - ( anchors[0].x - serifHeight ) )
					)
					x: anchors[0].x - ( serifHeight - ( ( contours[0].nodes[1].y - anchors[0].y ) / (serifWidth || 0.01) ) * (serifMedian - 1) * serifHeight )
					dirIn: Utils.lineAngle( contours[0].nodes[1].point, contours[0].nodes[2].point )
					typeOut: 'line'
					tensionIn: serifRoundness
					transformOrigin: contours[0].nodes[5].point
					transforms: Array([ 'skewX', anchors[2].rotate + 'deg' ])
				2:
					y: anchors[0].y - serifWidth
					x: anchors[0].x - ( serifHeight * serifMedian )
					typeIn: 'line'
					type: 'smooth'
					tensionOut: serifTerminalCurve
					transformOrigin: contours[0].nodes[5].point
					transforms: Array([ 'skewX', anchors[2].rotate + 'deg' ])
				3:
					y: contours[0].nodes[4].y + ( contours[0].nodes[2].y - contours[0].nodes[4].y ) * 0.5 * ( 1 - ( ( contours[0].nodes[4].y + ( contours[0].nodes[2].y - contours[0].nodes[4].y ) * 0.5 - anchors[0].y ) / (serifWidth || 0.01) ) * ( serifMedian - 1 ) ) - serifTerminal * serifHeight
					x: contours[0].nodes[4].x + ( contours[0].nodes[2].x - contours[0].nodes[4].x ) * 0.5 * ( 1 - ( ( contours[0].nodes[4].y + ( contours[0].nodes[2].y - contours[0].nodes[4].y ) * 0.5 - anchors[0].y ) / (serifWidth || 0.01) ) * ( serifMedian - 1 ) )
					dirOut: Utils.lineAngle( contours[0].nodes[2].point ,contours[0].nodes[4].point )
					type: 'smooth'
					tensionOut: serifTerminalCurve
					tensionIn: serifTerminalCurve
					transformOrigin: contours[0].nodes[5].point
					transforms: Array([ 'skewX', anchors[2].rotate + 'deg' ])
				4:
					y: anchors[0].y - serifWidth * midWidth
					x: anchors[0].x
					type: 'smooth'
					tensionIn: serifTerminalCurve
					dirOut: 90 + 'deg'
					transformOrigin: contours[0].nodes[5].point
					transforms: Array([ 'skewX', anchors[2].rotate + 'deg' ])
				5:
					y: anchors[1]
					x: anchors[0].x - serifArc * serifHeight
					dirIn: - 90 + 'deg'
					typeOut: 'line'
					transformOrigin: contours[0].nodes[5].point
					transforms: Array([ 'skewX', anchors[2].rotate + 'deg' ])
				6:
					y: contours[0].nodes[5].y
					x: contours[0].nodes[0].x
					typeOut: 'line'
