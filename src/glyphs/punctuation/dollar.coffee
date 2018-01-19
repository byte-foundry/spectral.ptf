exports.glyphs['dollar'] =
	unicode: '$'
	glyphName: 'dollar'
	characterName: 'DOLLAR SIGN'
	altImg: 'alt-spectral-dollar-0.svg'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 48
		spacingRight: 50 * spacing + 48
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
					x: spacingLeft + (18/80) * thickness
					y: Math.min(
						( 140 / 660 ) * capHeight,
						140
					)
					dirOut:( - 90 ) / 180 * Math.PI
					expand:
						width: ( 72 / 80 ) * thickness
						angle: 0
						distr: 0.25
				1:
					x: ( contours[0].nodes[0].expandedTo[0].x + contours[0].nodes[2].expandedTo[0].x ) * ( 192 / 404 )
					y: - overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 47 / 80 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0
				2:
					x: contours[0].nodes[0].expandedTo[0].x + 206 + 200 * width - (22)
					y: (contours[0].nodes[1].y + ( 36 / 80 ) * thickness * opticThickness) +
						(
							(
								capHeight / 2 - Math.sin(
									47 / 180 * Math.PI + Math.PI / 2 - ( 5 / 180 * Math.PI )
								) * 0.5 * ( 88 / 80 ) * thickness * opticThickness
							) -
							(contours[0].nodes[1].y + ( 36 / 80 ) * thickness * opticThickness)
						) * 0.5 + (13)
					dirIn:( - 90 ) / 180 * Math.PI
					type: 'smooth'
					expand:
						width: ( 84 / 80 ) * thickness * opticThickness
						angle:( - 160 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[4].expandedTo[1].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[4].expandedTo[1].x ) * ( 140 / 290 )
					y: contours[0].nodes[2].expandedTo[0].y + ( contours[0].nodes[4].expandedTo[1].y - contours[0].nodes[2].expandedTo[0].y ) * ( 105 / 200 ) * crossbar
					dirOut: Math.min(
						Utils.lineAngle({x: contours[0].nodes[2].expandedTo[0].x, y: contours[0].nodes[2].expandedTo[0].y}, {x: contours[0].nodes[4].expandedTo[1].x, y: contours[0].nodes[4].expandedTo[1].y}) + ((18 * width + (15 - (15 / 80) * thickness)) / 180 * Math.PI),
						Math.PI
					)
					type: 'smooth'
					tensionIn: 1.1
					tensionOut: 1.1
					expand:
						width: ( 98 / 80 ) * thickness * opticThickness
						angle: Math.PI * 0.5 - (5 / 180 * Math.PI) + Utils.lineAngle({x: contours[0].nodes[2].expandedTo[0].x, y: contours[0].nodes[2].expandedTo[0].y}, {x: contours[0].nodes[4].expandedTo[1].x, y: contours[0].nodes[4].expandedTo[1].y})
						distr: 0.5
				4:
					x: contours[0].nodes[0].x + 9 + (0/80) * thickness * opticThickness
					y: (
						capHeight / 2 + Math.sin(
							47 / 180 * Math.PI + Math.PI / 2 - ( 5 / 180 * Math.PI )
						) * 0.5 * ( 88 / 80 ) * thickness * opticThickness
					) + ( contours[0].nodes[5].y - ( 39 / 80 ) * thickness * opticThickness -
						(
							capHeight / 2 + Math.sin(
								47 / 180 * Math.PI + Math.PI / 2 - ( 5 / 180 * Math.PI )
							) * 0.5 * ( 88 / 80 ) * thickness * opticThickness
						)
					) * 0.5
					dirOut: Math.PI / 2
					type: 'smooth'
					tensionIn: 1.2
					expand:
						width: ( 95 / 80 ) * thickness * opticThickness
						angle:( 180 + 20 ) / 180 * Math.PI
						distr: 0.75
				5:
					x: contours[0].nodes[4].expandedTo[1].x + ( contours[0].nodes[6].expandedTo[1].x - contours[0].nodes[4].expandedTo[1].x ) * 0.55
					y: capHeight + overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 49 / 80 ) * thickness * opticThickness * contrast
						angle:( 180 - 100 ) / 180 * Math.PI
						distr: 1
				6:
					x: contours[0].nodes[2].expandedTo[0].x - 15 - (18/80) * thickness
					y: capHeight - Math.min(
						( 118 / 660 ) * capHeight,
						118
					)
					dirIn: Math.PI / 2
					expand:
						width: ( 72 / 80 ) * thickness
						angle: 0
						distr: 0.75
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					dirOut: contours[0].nodes[0].dirOut + Math.PI
				1:
					x: Math.min(
						contours[0].nodes[0].expandedTo[1].x - ( 33 / 80 ) * thickness,
						contours[0].nodes[0].expandedTo[0].x + 39
					)
					y: contours[1].nodes[3].y + Math.min( 4, ( 4 / 80 ) * thickness )
					typeOut: 'line'
				2:
					x: contours[0].nodes[0].expandedTo[1].x - Math.min( 5, ( 5 / 80 ) * thickness )
					y: contours[1].nodes[1].y
					typeOut: 'line'
				3:
					x: contours[1].nodes[4].x
					y: contours[1].nodes[4].y + Math.min( 27, ( 27 / 80 ) * thickness )
					typeOut: 'line'
				4:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[6].expandedTo[0].x
					y: contours[0].nodes[6].expandedTo[0].y
					typeOut: 'line'
				1:
					x: contours[2].nodes[0].x
					y: contours[2].nodes[0].y - Math.min( 26, ( 26 / 80 ) * thickness )
					typeOut: 'line'
				2:
					x: contours[0].nodes[6].expandedTo[0].x + Math.min( 5, ( 5 / 80 ) * thickness )
					y: contours[2].nodes[3].y
					typeOut: 'line'
				3:
					x: Math.max(
						contours[0].nodes[6].expandedTo[0].x + ( 33 / 80 ) * thickness,
						contours[0].nodes[6].expandedTo[1].x - 39
					)
					y: contours[2].nodes[1].y - Math.min( 4, ( 4 / 80 ) * thickness )
				4:
					x: contours[0].nodes[6].expandedTo[1].x
					y: contours[0].nodes[6].expandedTo[1].y
					dirIn: contours[0].nodes[6].dirIn + Math.PI
	components:
		0:
			base: 'line'
			copy: true
			parentAnchors:
				0:
					x: contours[0].nodes[5].x - 31 * width - (20)
					y: contours[0].nodes[5].y
		1:
			base: 'line'
			copy: true
			parentAnchors:
				0:
					x: contours[0].nodes[5].x + 25 * width + (20)
					y: contours[0].nodes[5].y
