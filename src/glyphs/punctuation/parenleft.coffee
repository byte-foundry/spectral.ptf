exports.glyphs['parenleft'] =
	unicode: '('
	glyphName: 'parenleft'
	characterName: 'LEFT PARENTHESIS'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 55
		spacingRight: 50 * spacing + 5
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
					x: contours[0].nodes[1].expandedTo[1].x + Math.max( 30, ( 30 / 80 ) * thickness ) + 70 * width
					y: capHeight + 80
					dirOut: Math.min(
						Math.max(
							- 80 - ( 40 / 80 ) * thickness,
							- 150
						),
						- 130 - 10 * width + 10
					) / 180 * Math.PI
					expand:
						width: ( 25 / 80 ) * thickness * contrast * contrastExtremity
						angle: 0
						distr: 0
				1:
					x: spacingLeft + (17/90) * thickness
					y: ( contours[0].nodes[0].y + contours[0].nodes[2].y ) / 2
					dirOut:( - 90 ) / 180 * Math.PI
					typeIn: 'smooth'
					tensionIn: 1.3
					tensionOut: 1.3
					expand:
						width: ( 67 / 80 ) * thickness
						angle: 0
						distr: 0.25
				2:
					x: contours[0].nodes[0].x
					y: ( 150 / 250 ) * descender
					dirIn: Math.max(
						Math.min(
							80 + ( 40 / 80 ) * thickness,
							150
						),
						130 + 10 * width - 10
					) / 180 * Math.PI
					expand:
						width: ( 25 / 80 ) * thickness * contrast * contrastExtremity
						angle: 0
						distr: 0
