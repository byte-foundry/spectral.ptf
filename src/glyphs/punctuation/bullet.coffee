exports.glyphs['bullet'] =
	unicode: '•'
	glyphName: 'bullet'
	characterName: 'BULLET'
	ot:
		advanceWidth: contours[0].nodes[3].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 130
		spacingRight: 50 * spacing + 130
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	anchors:
		0:
			x: spacingLeft + Math.max(
				40,
				Math.min(
					160,
					thickness * ( 120 / 80 )
				)
			)
			y: ( (200 - ( 50 / 80 ) * thickness ) / 450 ) * xHeight
	contours:
		0:
			skeleton: false
			closed: true
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					dirOut: 180 + 'deg'
					type: 'smooth'
				1:
					x: anchors[0].x - Math.max(
						80,
						Math.min(
							320,
							thickness * ( 240 / 80 )
						)
					) / 2
					y: anchors[0].y + Math.max(
						80,
						Math.min(
							320,
							thickness * ( 240 / 80 )
						)
					) / 2
					dirOut: 90 + 'deg'
					type: 'smooth'
				2:
					x: anchors[0].x
					y: anchors[0].y + Math.max(
						80,
						Math.min(
							320,
							thickness * ( 240 / 80 )
						)
					)
					dirOut: 0 + 'deg'
					type: 'smooth'
				3:
					x: anchors[0].x + Math.max(
						80,
						Math.min(
							320,
							thickness * ( 240 / 80 )
						)
					) / 2
					y: anchors[0].y + Math.max(
						80,
						Math.min(
							320,
							thickness * ( 240 / 80 )
						)
					) / 2
					dirOut: - 90 + 'deg'
					type: 'smooth'
