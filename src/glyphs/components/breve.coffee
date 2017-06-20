exports.glyphs['breve'] =
	glyphName: 'breve'
	characterName: 'BREVE ACCENT'
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
					x: anchors[0].x - 126 * width - ( 20 / 80 ) * thickness
					y: Math.min(
						contours[0].nodes[1].expandedTo[0].y + 100,
						contours[0].nodes[1].expandedTo[1].y + ( 157 + ( 10 / 80 ) * thickness )
					)
					dirOut: - 90 + Math.max( 0, Math.min( 25, 18 * width ) ) + 'deg'
					tensionOut: 1.2
					expand: Object({
						width: ( 14 / 80 ) * thickness * contrast * contrastExtremity
						angle: 180 + 'deg'
						distr: 0.75
					})
				1:
					x: anchors[0].x
					y: anchors[0].y + 30
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1.2
					tensionOut: 1.2
					expand: Object({
						width: ( 67 / 80 ) * thickness
						angle: 180 + 90 + 'deg'
						distr: 1
					})
				2:
					x: anchors[0].x + ( anchors[0].x - contours[0].nodes[0].expandedTo[1].x )
					y: contours[0].nodes[0].expandedTo[1].y
					dirIn: - 90 - Math.max( 0, Math.min( 25, 18 * width ) ) + 'deg'
					tensionIn: 1.2
					expand: Object({
						width: ( 14 / 80 ) * thickness * contrast * contrastExtremity
						angle: 0 + 'deg'
						distr: 1
					})
