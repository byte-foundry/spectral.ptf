exports.glyphs['g'] =
	unicode: 'g'
	glyphName: 'g'
	characterName: 'LATIN SMALL LETTER G'
	ot:
		advanceWidth: contours[2].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 70
		spacingRight: 50 * spacing + 50
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[1].expandedTo[0].x
			y: xHeight + diacriticHeight
			junctionBottom: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[0], contours[0].nodes[0].expandedTo[0], 70, false, 10 )
			junctionTop: Utils.pointOnCurve( contours[0].nodes[1].expandedTo[0], contours[0].nodes[2].expandedTo[0], 50 * width + ( 40 / 80 ) * thickness, false, 10 )
			edgeTop: Utils.pointOnCurve( contours[1].nodes[1].expandedTo[1], contours[1].nodes[0].expandedTo[1], 80, false, 10 )
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft + 10 + (20/80) * thickness
					y: contours[0].nodes[3].y + ( (xHeight + overshoot) - contours[0].nodes[3].y ) * 0.5
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 82 / 80 ) * thickness
						angle: 2 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1.1
					expand: Object({
						width: ( 40 / 80 ) * thickness * contrast
						angle: - 100 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 156 + 200 * width - (20),
						contours[0].nodes[0].expandedTo[1].x + 0.25 * ( 82 / 80 ) * thickness + 10
					)
					y: contours[0].nodes[0].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 82 / 80 ) * thickness
						angle: 182 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[1].x
					y: ( 142 / 450 ) * xHeight
					dirOut: 180 + 'deg'
					type: 'smooth'
					tensionIn: 1.1
					expand: Object({
						width: ( 42 / 80 ) * thickness * contrast
						angle: 72 + 'deg'
						distr: 0.1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].junctionBottom.x
					y: anchors[0].junctionBottom.y
					dirOut: Math.min(
						- 165 / 180 * Math.PI,
						Utils.lineAngle( contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ) - 20 / 180 * Math.PI
					)
					expand: Object({
						width: ( 20 / 80 ) * thickness * contrast * contrastExtremity
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: spacingLeft + (18)
					y: Math.max(
						contours[1].nodes[2].expandedTo[1].y + ( contours[1].nodes[0].expandedTo[1].y - contours[1].nodes[2].expandedTo[1].y ) * ( 85 / 194 ),
						contours[1].nodes[2].y + ( contours[0].nodes[3].expandedTo[0].y - contours[1].nodes[2].y ) * 0.5
					)
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 78 / 80 ) * thickness * contrast
						angle: 180 + 25 + 'deg'
						distr: 0.75
					})
				2:
					x: contours[0].nodes[3].expandedTo[0].x - 73 + (14)
					y: - overshoot + (35)
					dirIn: 180 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 74 / 80 ) * thickness
						angle: 180 + 70 + 'deg'
						distr: 0.5
					})
				3:
					x: contours[0].nodes[3].expandedTo[0].x + 34 * contrast + (22)
					y: - overshoot + (35)
					dirOut: 0 + 'deg'
					tensionOut: 1.2
					expand: Object({
						width: ( 80 / 80 ) * thickness
						angle: 180 + 60 + 'deg'
						distr: 0.5
					})
				4:
					x: contours[1].nodes[6].expandedTo[0].x + 212 + 200 * width - (18)
					y: contours[1].nodes[5].expandedTo[1].y + ( contours[1].nodes[3].expandedTo[0].y - contours[1].nodes[5].expandedTo[1].y ) * 0.5 + (5)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 76 / 80 ) * thickness * contrast
						angle: 180 + 16 + 'deg'
						distr: 0.25
					})
				5:
					x: contours[0].nodes[3].expandedTo[0].x - 19
					y: ( 240 / 250 ) * descender
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 30 / 80 ) * thickness * contrast
						angle: 70 + 'deg'
						distr: 0
					})
				6:
					x: spacingLeft - 10 + (19)
					y: contours[1].nodes[5].expandedTo[1].y + ( contours[1].nodes[3].expandedTo[1].y - contours[1].nodes[5].expandedTo[1].y ) * 0.45
					dirIn: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 72 / 80 ) * thickness
						angle: 9 + 'deg'
						distr: 0.25
					})
				7:
					x: contours[1].nodes[2].expandedTo[1].x
					y: contours[1].nodes[2].expandedTo[1].y
					dirIn: Math.min(
						- 160 / 180 * Math.PI,
						Utils.lineAngle( contours[1].nodes[7].expandedTo[1].point, contours[1].nodes[6].expandedTo[1].point ) - 20 / 180 * Math.PI
					)
					type: 'smooth'
					expand: Object({
						width: ( 10 / 80 ) * thickness * contrast * contrastExtremity
						angle: 180 + 110 + 'deg'
						distr: 1
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].junctionTop.x
					y: anchors[0].junctionTop.y
					typeOut: 'line'
					expand: Object({
						width: ( 36 / 80 ) * thickness * contrast * contrastExtremity
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x + 60
					y: xHeight
					expand: Object({
						width: ( 54 / 80 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
		# 3:
		# 	skeleton: false
		# 	closed: true
		# 	nodes:
		# 		0:
		# 			x: contours[1].nodes[0].expandedTo[1].x
		# 			y: contours[1].nodes[0].expandedTo[1].y
		# 			typeOut: 'line'
		# 		1:
		# 			x: contours[1].nodes[1].expandedTo[1].x
		# 			y: contours[1].nodes[1].expandedTo[1].y
		# 			dirOut: 90 + 'deg'
		# 		2:
		# 			x: anchors[0].edgeTop.x
		# 			y: anchors[0].edgeTop.y + 15
		# 			dirIn: Utils.lineAngle( contours[3].nodes[0].point, contours[3].nodes[1].point )
		# 			typeOut: 'line'
		# 			type: 'smooth'
