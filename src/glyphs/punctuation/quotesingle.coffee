# TODO: apply this minThickness trick everywhere
exports.glyphs['quotesingle'] =
	unicode: '\''
	glyphName: 'quotesingle'
	characterName: 'APOSTROPHE'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	parameters:
		spacingLeft: 50 * spacing + 80
		spacingRight: 50 * spacing + 80
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
					x: spacingLeft + (45/80) * thickness
					y: capHeight + 80
					typeOut: 'line'
					expand:
						width: ( 90 / 80 ) * thickness
						angle: 0
						distr: 0.5
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y - 100 - Math.min( 150, ( 150 / 80 ) * thickness )
					typeIn: 'line'
					expand:
						width: ( 20 / 80 ) * thickness
						angle: 0
						distr: 0.5
