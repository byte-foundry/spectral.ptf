exports.glyphs['guillemotright'] =
	unicode: '»'
	glyphName: 'guillemotright'
	characterName: 'RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[1].x + spacingRight
	parameters:
		spacingLeft: 50 * spacing + 20
		spacingRight: 50 * spacing + 20
		thickness: Math.max( 40, Math.min( 120, thickness ))
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: xHeight - ( 25 / 450 ) * xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 11 / 80 ) * thickness * contrast * contrastExtremity * Math.sqrt( width )
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 150 * width + 60 - (25),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * (( 100 / 80 ) * thickness * Math.sqrt( width )) + 10
					)
					y: contours[0].nodes[2].y + ( contours[0].nodes[0].y - contours[0].nodes[2].y ) * 0.5
					typeOut: 'line'
					type: 'smooth'
					expand: Object({
						width: ( 100 / 80 ) * thickness * Math.sqrt( width )
						angle: 0 + 'deg'
						distr: 0.75
					})
				2:
					x: contours[0].nodes[0].expandedTo[0].x
					y: ( 70 / 450 ) * xHeight
					expand: Object({
						width: ( 11 / 80 ) * thickness * contrast * contrastExtremity * Math.sqrt( width )
						angle: 0 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x - 20 - 10 * width
					y: xHeight - ( 25 / 450 ) * xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 11 / 80 ) * thickness * contrast * contrastExtremity * Math.sqrt( width )
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					x: Math.max(
						contours[1].nodes[0].expandedTo[0].x + 150 * width + 60 - (25),
						contours[1].nodes[0].expandedTo[1].x + 0.75 * (( 100 / 80 ) * thickness * Math.sqrt( width )) + 10
					)
					y: contours[1].nodes[2].y + ( contours[1].nodes[0].y - contours[1].nodes[2].y ) * 0.5
					typeOut: 'line'
					type: 'smooth'
					expand: Object({
						width: ( 100 / 80 ) * thickness * Math.sqrt( width )
						angle: 0 + 'deg'
						distr: 0.75
					})
				2:
					x: contours[1].nodes[0].expandedTo[0].x
					y: ( 70 / 450 ) * xHeight
					expand: Object({
						width: ( 11 / 80 ) * thickness * contrast * contrastExtremity * Math.sqrt( width )
						angle: 0 + 'deg'
						distr: 0
					})
