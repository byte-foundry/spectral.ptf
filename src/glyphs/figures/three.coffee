exports.glyphs['three'] =
	unicode: '3'
	glyphName: 'three'
	characterName: 'DIGIT THREE'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 33
		spacingRight: 50 * spacing + 23
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[3].expandedTo[0].x + 20 + (23/80) * thickness * opticThickness
					y: capHeight - ( 133 / 660 ) * capHeight
					dirOut: Math.PI / 2
					expand:
						width: ( 90 / 80 ) * thickness * opticThickness
						angle:( 7 ) / 180 * Math.PI
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * ( 210 / 390 )
					y: capHeight + overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 50 / 80 ) * thickness * opticThickness * contrast
						angle:( - 115 ) / 180 * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 190 + 200 * width - (23),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 97 / 80 ) * thickness * opticThickness + 10
					)
					y: ( contours[0].nodes[3].y + ( 20 / 80 ) * thickness * opticThickness ) + ( ( capHeight + overshoot - ( Math.sin( 57 / 180 * Math.PI ) * ( 56 / 80 ) * thickness * opticThickness * contrast ) ) - ( contours[0].nodes[3].y + ( 20 / 80 ) * thickness * opticThickness ) ) * ( 165 / 278 )
					dirIn: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 97 / 80 ) * thickness * opticThickness
						angle:( - 175 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * ( 95 / 390 )
					y: ( 348 / 660 ) * capHeight
					dirIn: 0
					tensionIn: 1.1
					expand:
						width: ( 20 / 80 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[3].expandedTo[0].x
					y: contours[0].nodes[3].expandedTo[1].y
					dirOut:( 4 ) / 180 * Math.PI
					tensionOut: 1.1
					expand:
						width: ( 44 / 80 ) * thickness * opticThickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: Math.max(
						contours[0].nodes[2].x,
						contours[0].nodes[2].expandedTo[1].x
					) + 25
					y: ( 175 / 660 ) * capHeight
					dirIn: Math.PI / 2
					type: 'smooth'
					tensionIn: 1.1
					expand:
						width: ( 96 / 80 ) * thickness * opticThickness
						angle: Math.PI
						distr: 0.3
				2:
					x: contours[1].nodes[3].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[1].nodes[3].expandedTo[0].x ) * ( 210 / 445 )
					y: - overshoot
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 45 / 80 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0
				3:
					x: spacingLeft + (22/80) * thickness * opticThickness
					y: ( 120 / 660 ) * capHeight
					dirIn:( - 90 ) / 180 * Math.PI
					expand:
						width: ( 90 / 80 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					dirOut:( - 90 ) / 180 * Math.PI
					typeIn: 'line'
				1:
					x: contours[2].nodes[0].x + ( contours[2].nodes[4].x - contours[2].nodes[0].x ) * ( 40 / 90 )
					y: contours[0].nodes[0].expandedTo[0].y - ( 35 / 80 ) * thickness * opticThickness
					typeOut: 'line'
					typeIn: 'line'
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[1].x - ( 8 / 80 ) * thickness,
						contours[0].nodes[0].expandedTo[0].x
					)
					y: contours[2].nodes[1].y
					typeOut: 'line'
					typeIn: 'line'
				3:
					x: contours[0].nodes[0].expandedTo[1].x
					y: Math.min(
						contours[2].nodes[2].y + ( 8 / 80 ) * thickness,
						contours[0].nodes[0].expandedTo[1].y
					)
					typeOut: 'line'
					typeIn: 'line'
				4:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
					typeIn: 'line'
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[3].expandedTo[0].x
					y: contours[1].nodes[3].expandedTo[0].y
					dirOut: Math.PI / 2
					typeIn: 'line'
				1:
					x: contours[3].nodes[0].x + ( contours[3].nodes[4].x - contours[3].nodes[0].x ) * ( 35 / 90 )
					y: contours[1].nodes[3].expandedTo[0].y + ( 35 / 80 ) * thickness * opticThickness
					typeOut: 'line'
					typeIn: 'line'
				2:
					x: Math.max(
						contours[1].nodes[3].expandedTo[1].x - ( 8 / 80 ) * thickness,
						contours[1].nodes[3].expandedTo[0].x
					)
					y: contours[3].nodes[1].y
					typeOut: 'line'
					typeIn: 'line'
				3:
					x: contours[1].nodes[3].expandedTo[1].x
					y: Math.max(
						contours[3].nodes[2].y - ( 8 / 80 ) * thickness,
						contours[1].nodes[3].expandedTo[1].y
					)
					typeOut: 'line'
					typeIn: 'line'
				4:
					x: contours[1].nodes[3].expandedTo[1].x
					y: contours[1].nodes[3].expandedTo[1].y
					typeOut: 'line'
					typeIn: 'line'
