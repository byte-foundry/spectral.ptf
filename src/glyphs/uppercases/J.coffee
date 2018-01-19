exports.glyphs['J_cap'] =
	unicode: 'J'
	glyphName: 'J'
	characterName: 'LATIN CAPITAL LETTER J'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 70 + ( 80 / 65 ) * serifWidth
		spacingRight: 50 * spacing + 70 + ( 80 / 65 ) * serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: 0
			y: 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (45/80) * thickness * opticThickness
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 90 / 80 ) * thickness * opticThickness
						angle: 0
						distr: 0.5
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: Math.max( 50, Math.max( 50 * width, ( 50 / 660 ) * capHeight ))
					dirOut:( - 90 ) / 180 * Math.PI
					expand:
						width: ( 90 / 80 ) * thickness * opticThickness / Math.cos( ( Math.min( 65, 90 - 25 / 80 * thickness * opticThickness )) / 180 * Math.PI )
						angle: ( Math.min( 65,( 90 - 25 / 80 * thickness * opticThickness )) ) / 180 * Math.PI
						distr: 0
				2:
					x: contours[0].nodes[0].expandedTo[0].x - 50 - 50 * width
					y: ( 173 / 250 ) * descender
					dirIn: 0
					type: 'smooth'
					expand:
						width: ( 80 / 80 ) * thickness * opticThickness * contrast * contrastExtremity
						angle:( 180 + 65 ) / 180 * Math.PI
						distr: 1
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y
					dirOut: Math.PI
				1:
					x: contours[0].nodes[2].expandedTo[1].x - ( 33 / 80 ) * thickness * opticThickness
					y: contours[0].nodes[2].expandedTo[1].y + ( contours[0].nodes[2].expandedTo[0].y - contours[0].nodes[2].expandedTo[1].y ) * ( 28 / 80 )
					dirOut: Math.PI / 2
					type: 'smooth'
					tensionOut: 0.1
				2:
					x: contours[1].nodes[1].x + ( 10 / 80 ) * thickness * opticThickness
					y: contours[0].nodes[2].expandedTo[0].y + ( 9 / 80 ) * thickness * opticThickness
					typeOut: 'line'
				3:
					x: contours[1].nodes[2].x + 6
					y: contours[1].nodes[2].y
					dirOut:( - 15 ) / 180 * Math.PI
				4:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[2].expandedTo[0].y
					typeOut: 'line'
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		1:
			base: ['serif-vertical', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
