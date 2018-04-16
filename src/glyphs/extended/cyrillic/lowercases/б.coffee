# TODO: contrast
exports.glyphs['б'] =
	unicode: 'б'
	glyphName: 'б'
	characterName: 'CYRILLIC SMALL LETTER б'
	ot:
		advanceWidth: contours[0].nodes[5].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 50
	tags: [
		'all',
		'cyrillic',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[5].expandedTo[0].x - 9
					y: ( 736 / 750 ) * ascenderHeight
					dirOut: - Math.PI / 2
					typeIn: 'smooth'
					tensionOut: 1.2
					expand:
						width: ( 16 / 80 ) * thickness * contrast
						angle: 0
						distr: 1
				1:
					x: contours[0].nodes[0].expandedTo[0].x - Math.min( 118 * width, 118 ) + (24)
					y: contours[0].nodes[0].expandedTo[0].y - ( contours[0].nodes[0].expandedTo[0].y - contours[0].nodes[6].expandedTo[0].y ) * ( ( 100 + ( 39 / 80 ) * thickness ) / 296 ) + (21)
					dirOut: ( 186 / 180 ) * Math.PI
					typeIn: 'smooth'
					tensionIn: 1.2
					tensionOut: 1.4
					expand:
						width: ( 84 / 80 ) * thickness
						angle: Math.PI + ( 80 / 180 ) * Math.PI
						distr: 0.75
				2:
					x: Math.max(
						contours[0].nodes[3].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[3].x ) * ( 143 / 380 ) - (20),
						contours[0].nodes[3].expandedTo[1].x
					)
					# x: contours[0].nodes[3].expandedTo[0].x + 141 * width - (29)
					y: contours[0].nodes[6].expandedTo[0].y + ( contours[0].nodes[1].expandedTo[1].y - contours[0].nodes[6].expandedTo[0].y ) * ( 80 / 157 )
					# dirOut: ( 230 / 180 ) * Math.PI
					dirOut: Utils.lineAngle(
					        { x: contours[0].nodes[1].expandedTo[0].x, y: contours[0].nodes[1].expandedTo[0].y },
					        { x: contours[0].nodes[3].expandedTo[0].x, y: contours[0].nodes[3].expandedTo[0].y }
					    )
					typeIn: 'smooth'
					expand:
						width: ( 50 / 80 ) * thickness * contrast
						angle: ( 214 / 180 ) * Math.PI + Math.PI / 2
						distr: 1
				3:
					x: spacingLeft + (23/80) * thickness
					y: contours[0].nodes[4].y + ( contours[0].nodes[6].y - contours[0].nodes[4].y ) * ( 257 / 450 ) + (0)
					dirOut: - Math.PI / 2
					typeIn: 'smooth'
					tensionIn: 1.2
					expand:
						width: ( 91 / 80 ) * thickness
						angle: ( 8 / 180 ) * Math.PI
						distr: 0.25
				4:
					x: contours[0].nodes[3].x + ( contours[0].nodes[5].x - contours[0].nodes[3].x ) * ( 221 / 440 )
					y: - overshoot
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: ( 45 / 80 ) * thickness * contrast
						angle: ( 70 / 180 ) * Math.PI
						distr: 0
				5:
					x: Math.max(
						contours[0].nodes[3].expandedTo[0].x + 240 + 200 * width - (22),
						contours[0].nodes[3].expandedTo[1].x + 0.75 * ( 91 / 80 ) * thickness + 30
					)
					y: ( 215 / 450 ) * xHeight
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 91 / 80 ) * thickness
						angle: ( 190 / 180 ) * Math.PI
						distr: 0.25
				6:
					x: contours[0].nodes[3].x + ( contours[0].nodes[5].x - contours[0].nodes[3].x ) * ( 239 / 440 )
					y: ( 440 / 450 ) * xHeight
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 52 / 80 ) * thickness * contrast
						angle: ( 234 / 180 ) * Math.PI
						distr: 0
				7:
					x: contours[0].nodes[3].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[1].x - contours[0].nodes[3].expandedTo[0].x ) / 2
					y: contours[0].nodes[3].y
					dirIn: Math.PI / 2
					expand:
						width: ( 25 / 80 ) * thickness
						angle: 0
						distr: 0.5
