exports.glyphs['serif-oblique-acute'] =
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
			x: parentAnchors[0].base.x
			y: parentAnchors[0].base.y - Math.max( 0, serifArc * serifHeight )
		1: parentAnchors[0].base.x + Math.abs( parentAnchors[0].opposite.x - parentAnchors[0].base.x ) * 0.5 * anchors[3].scaleX
		2:
			x: parentAnchors[0].obliqueEndPoint.x
			y: parentAnchors[0].obliqueEndPoint.y
		3:
			scaleX: parentAnchors[0].scaleX || 1
	tags: [
		'component'
	]
	contours:
		0:
			exportReversed: parentAnchors[0].reversed == true
			closed: true
			nodes:
				0:
					x: Utils.onLine({
						y: anchors[0].y + serifHeight + serifCurve
						on: [ parentAnchors[0].base, parentAnchors[0].obliqueEndPoint ]
					})
					y: anchors[0].y + serifHeight + serifCurve
					dirOut: Utils.lineAngle( anchors[0].point, anchors[2].point )
					tensionOut: serifRoundness
				1:
					x: Utils.onLine({
						y: anchors[0].y + serifHeight
						on: [ parentAnchors[0].base, parentAnchors[0].obliqueEndPoint ]
					}) - Math.abs( Math.max(
						( contours[0].nodes[2].x - Utils.onLine({
							y: anchors[0].y + serifHeight
							on: [ parentAnchors[0].base, parentAnchors[0].obliqueEndPoint ]
						}) ) * 0.85 * anchors[3].scaleX
						- Math.abs( contours[0].nodes[0].y - ( anchors[0].y + serifHeight ) )
					) ) * anchors[3].scaleX
					y: anchors[0].y + serifHeight - ( ( contours[0].nodes[1].x - Utils.onLine({
						y: anchors[0].y + serifHeight
						on: [ parentAnchors[0].base, parentAnchors[0].obliqueEndPoint ]
					}) ) / ( (serifWidth || 0.01) * anchors[3].scaleX - Math.abs( Utils.onLine({
						y: anchors[0].y + serifHeight
						on: [ parentAnchors[0].base, parentAnchors[0].obliqueEndPoint ]
					}) - anchors[0].x ) * anchors[3].scaleX ) ) * (serifMedian - 1) * serifHeight
					dirIn: Utils.lineAngle( contours[0].nodes[1].point, contours[0].nodes[2].point )
					typeOut: 'line'
					tensionIn: serifRoundness
				2:
					x: Math.min(
						(anchors[0].x - serifWidth * anchors[3].scaleX) * anchors[3].scaleX,
						Utils.onLine({
							y: anchors[0].y + serifHeight * serifMedian
							on: [ parentAnchors[0].base, parentAnchors[0].obliqueEndPoint ]
						}) * anchors[3].scaleX
					) * anchors[3].scaleX
					y: anchors[0].y + serifHeight * serifMedian
					typeIn: 'line'
					type: 'smooth'
					tensionOut: serifTerminalCurve
				3:
					x: contours[0].nodes[4].x + ( contours[0].nodes[2].x - contours[0].nodes[4].x ) * 0.5 * ( 1 - ( ( contours[0].nodes[4].x + ( contours[0].nodes[2].x - contours[0].nodes[4].x ) * 0.5 - anchors[0].x ) / (serifWidth || 0.01) * anchors[3].scaleX ) * ( serifMedian - 1 ) ) - serifTerminal * serifHeight * anchors[3].scaleX
					y: contours[0].nodes[4].y + ( contours[0].nodes[2].y - contours[0].nodes[4].y ) * 0.5 * ( 1 - ( ( contours[0].nodes[4].x + ( contours[0].nodes[2].x - contours[0].nodes[4].x ) * 0.5 - anchors[0].x ) / (serifWidth || 0.01) * anchors[3].scaleX ) * ( serifMedian - 1 ) )
					dirOut: Utils.lineAngle( contours[0].nodes[2].point ,contours[0].nodes[4].point )
					type: 'smooth'
					tensionOut: serifTerminalCurve
					tensionIn: serifTerminalCurve
				4:
					x: anchors[0].x - serifWidth * anchors[3].scaleX * midWidth
					y: anchors[0].y
					type: 'smooth'
					tensionIn: serifTerminalCurve
					dirOut: 0 + 'deg'
				5:
					x: anchors[1]
					y: anchors[0].y + serifArc * serifHeight
					dirIn: 180 + 'deg'
					typeOut: 'line'
				6:
					x: Utils.onLine({
						y: anchors[0].y + serifHeight + serifCurve
						on: [ parentAnchors[0].base, parentAnchors[0].obliqueEndPoint ]
					}) + Math.abs( parentAnchors[0].opposite.x - parentAnchors[0].base.x ) * 0.5 * anchors[3].scaleX
					y: contours[0].nodes[0].y
					typeOut: 'line'
