exports.glyphs['asterisk'] =
	unicode: '*'
	glyphName: 'asterisk'
	characterName: 'ASTERISK'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + 145 + (( 60 / 80 ) * thickness) / 2 + spacingRight
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 14
		spacingRight: 50 * spacing + 14
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y - 154
					typeOut: 'line'
					expand:
						width: ( 22 / 80 ) * thickness * contrast
						angle: 0
						distr: 0.5
				1:
					x: spacingLeft + 145 + (( 60 / 80 ) * thickness) / 2
					y: ascenderHeight
					typeIn: 'line'
					expand:
						width: ( 60 / 80 ) * thickness
						angle: 0
						distr: 0.5
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y - 154
					typeOut: 'line'
					expand:
						width: ( 22 / 80 ) * thickness * contrast
						angle: 0
						distr: 0.5
				1:
					x: spacingLeft + 145 + (( 60 / 80 ) * thickness) / 2
					y: ascenderHeight
					typeIn: 'line'
					expand:
						width: ( 60 / 80 ) * thickness
						angle: 0
						distr: 0.5
			transformOrigin: contours[0].nodes[0]
			transforms: Array(
				[ 'rotate', ( 72 ) / 180 * Math.PI ]
			)
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y - 154
					typeOut: 'line'
					expand:
						width: ( 22 / 80 ) * thickness * contrast
						angle: 0
						distr: 0.5
				1:
					x: spacingLeft + 145 + (( 60 / 80 ) * thickness) / 2
					y: ascenderHeight
					typeIn: 'line'
					expand:
						width: ( 60 / 80 ) * thickness
						angle: 0
						distr: 0.5
			transformOrigin: contours[0].nodes[0]
			transforms: Array(
				[ 'rotate', ( 144 ) / 180 * Math.PI ]
			)
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y - 154
					typeOut: 'line'
					expand:
						width: ( 22 / 80 ) * thickness * contrast
						angle: 0
						distr: 0.5
				1:
					x: spacingLeft + 145 + (( 60 / 80 ) * thickness) / 2
					y: ascenderHeight
					typeIn: 'line'
					expand:
						width: ( 60 / 80 ) * thickness
						angle: 0
						distr: 0.5
			transformOrigin: contours[0].nodes[0]
			transforms: Array(
				[ 'rotate', ( 216 ) / 180 * Math.PI ]
			)
		4:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y - 154
					typeOut: 'line'
					expand:
						width: ( 22 / 80 ) * thickness * contrast
						angle: 0
						distr: 0.5
				1:
					x: spacingLeft + 145 + (( 60 / 80 ) * thickness) / 2
					y: ascenderHeight
					typeIn: 'line'
					expand:
						width: ( 60 / 80 ) * thickness
						angle: 0
						distr: 0.5
			transformOrigin: contours[0].nodes[0]
			transforms: Array(
				[ 'rotate', ( 288 ) / 180 * Math.PI ]
			)
