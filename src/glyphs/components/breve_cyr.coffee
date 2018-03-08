exports.glyphs['breve_cyr'] =
	glyphName: 'breve_cyr'
	characterName: 'BREVE ACCENT CYRILLIC'
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
						contours[0].nodes[1].expandedTo[0].y + 130,
						contours[0].nodes[1].expandedTo[1].y + ( 157 + ( 10 / 80 ) * thickness )
					)
					dirOut: - Math.PI / 2
					expand:
						width: ( 14 / 80 ) * thickness * contrast * contrastExtremity * 6
						angle: Math.PI
						distr: 0.75
				1:
					x: anchors[0].x
					y: anchors[0].y + 30
					dirOut: 0
					type: 'smooth'
					tensionIn: 1.2
					tensionOut: 1.2
					expand:
						width: ( 67 / 80 ) * thickness * 0.6
						angle:( 180 + 90 ) / 180 * Math.PI
						distr: 1
				2:
					x: anchors[0].x + ( anchors[0].x - contours[0].nodes[0].expandedTo[1].x )
					y: contours[0].nodes[0].expandedTo[1].y
					dirIn: - Math.PI / 2
					expand:
						width: ( 14 / 80 ) * thickness * contrast * contrastExtremity * 6
						angle: 0
						distr: 1
