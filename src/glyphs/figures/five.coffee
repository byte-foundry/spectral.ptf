exports.glyphs['five'] =
	unicode: '5'
	glyphName: 'five'
	characterName: 'DIGIT FIVE'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 55
		spacingRight: 50 * spacing + 45
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
					x: spacingLeft + 8 + (10)
					y: 36 + (8)
					dirOut:( - 55 ) / 180 * Math.PI
					expand:
						width: ( 86 / 80 ) * thickness * opticThickness * contrast * contrastExtremity
						angle:( 40 ) / 180 * Math.PI
						distr: 0.15
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * ( 130 / 390 )
					y: - overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 64 / 80 ) * thickness * opticThickness * contrast
						angle: 50 / 180 * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 190 + 200 * width - (16),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 82 / 80 ) * thickness + 10
					)
					y: - overshoot + (( 64 / 80 ) * thickness * opticThickness * Math.sin( 50 )) +  ( (( 433 / 660 ) * capHeight * crossbar - (39) + (( 80 / 80 ) * thickness * opticThickness * contrast) / 2 ) - overshoot + (( 64 / 80 ) * thickness * opticThickness * Math.sin( 50 )) ) * ( 195 / 315 )
					dirIn:( - 90 ) / 180 * Math.PI
					type: 'smooth'
					expand:
						width: ( 82 / 80 ) * thickness * opticThickness
						angle:( - 150 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[1].x - (6/80) * thickness
					y: ( 433 / 660 ) * capHeight * crossbar - (39)
					dirIn: 0
					type: 'smooth'
					expand:
						width: ( 80 / 80 ) * thickness * opticThickness * contrast
						angle:( - 100 ) / 180 * Math.PI
						distr: 0.5
				4:
					x: contours[0].nodes[0].x + (13)
					y: contours[0].nodes[3].expandedTo[1].y - 10
					dirIn: Utils.lineAngle({x: contours[0].nodes[3].expandedTo[1].x, y: contours[0].nodes[3].expandedTo[1].y}, {x: contours[0].nodes[4].expandedTo[1].x, y: contours[0].nodes[4].expandedTo[1].y}) + (10 / 180) * Math.PI
					expand:
						width: ( 95 / 80 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: ( 180 + 62 ) / 180 * Math.PI
						distr: 1
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[4].expandedTo[1].x
					y: capHeight
					typeOut: 'line'
					expand:
						width: ( 48 / 80 ) * thickness * opticThickness * contrast
						angle: 0
						distr: 0
				1:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[0].nodes[4].expandedTo[1].y
					typeOut: 'line'
					expand:
						width: (( 48 / 80 ) * thickness * opticThickness * contrast) / Math.sin( contours[0].nodes[4].expand.angle - Math.PI - Math.PI / 2 - ( 10 / 180 * Math.PI ) )
						angle: Utils.lineAngle({x: contours[0].nodes[4].expandedTo[1].x, y: contours[0].nodes[4].expandedTo[1].y}, {x: contours[0].nodes[4].expandedTo[0].x, y: contours[0].nodes[4].expandedTo[0].y}) - Math.PI -  (10 / 180 * Math.PI)
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[0].x - 50
					y: capHeight
					typeOut: 'line'
					expand:
						width: ( 77 / 80 ) * thickness * opticThickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[1].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[1].nodes[0].expandedTo[0].x ) * 0.5
					y: contours[2].nodes[0].y
					typeOut: 'line'
					expand:
						width: ( 77 / 80 ) * thickness * opticThickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					dirOut: Utils.lineAngle({x: contours[0].nodes[0].expandedTo[0].x, y: contours[0].nodes[0].expandedTo[0].y}, {x: contours[0].nodes[0].expandedTo[1].x, y: contours[0].nodes[0].expandedTo[1].y}) + Math.PI / 2
				1:
					x: contours[0].nodes[0].expandedTo[0].x - ( 8 / 80 ) * thickness * opticThickness
					y: contours[0].nodes[0].expandedTo[0].y + ( contours[0].nodes[0].expandedTo[1].y - contours[0].nodes[0].expandedTo[0].y ) * ( 20 / 57 )
					dirOut: Math.PI / 2
					type: 'smooth'
				2:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * ( 10 / 65 )
					y: contours[0].nodes[0].expandedTo[0].y + ( contours[0].nodes[0].expandedTo[1].y - contours[0].nodes[0].expandedTo[0].y ) * ( 47 / 57 )
					typeOut: 'line'
					type: 'smooth'
				3:
					x: contours[3].nodes[4].x - ( 10 / 80 ) * thickness * opticThickness
					y: contours[3].nodes[4].y
					typeOut: 'line'
				4:
					x: contours[0].nodes[0].expandedTo[1].x - ( 10 / 80 ) * thickness * opticThickness
					y: contours[0].nodes[0].expandedTo[1].y + ( 17 / 80 ) * thickness * opticThickness
					typeOut: 'line'
				5:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
	components:
		0:
			base: ['none', 'serif-horizontal-fake', 'serif-horizontal' ]
			id: 'bottomrighttop'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[0]
					noneAnchor: contours[2].nodes[0].expandedTo[0]
					opposite: contours[2].nodes[0].expandedTo[1]
					reversed: true
					rotate: - 10 * serifRotate
			transformOrigin: contours[2].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'translateX', - ( Math.tan( ( - 10 * serifRotate ) / 180 * Math.PI ) * ( ( 77 / 80 ) * thickness * opticThickness * 0.5 ) ) ]
			)
		1:
			base: ['none', 'serif-horizontal-fake', 'serif-horizontal' ]
			id: 'bottomrightbottom'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[1]
					noneAnchor: contours[2].nodes[0].expandedTo[1]
					opposite: contours[2].nodes[0].expandedTo[0]
					rotate: 10 * serifRotate
			transformOrigin: contours[2].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'translateX', ( Math.tan( ( 10 * serifRotate ) / 180 * Math.PI ) * ( ( 77 / 80 ) * thickness * opticThickness * 0.5 ) ) ]
			)
