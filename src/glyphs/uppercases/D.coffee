exports.glyphs['D_cap'] =
	unicode: 'D'
	glyphName: 'D'
	characterName: 'LATIN CAPITAL LETTER D'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 65 + ( 80 / 65 ) * serifWidth
		spacingRight: 50 * spacing + 70
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + ( 45 / 80 ) * diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (22/80) * thickness * opticThickness
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 90 / 80 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					expand:
						width: ( 90 / 80 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x - ( 45 / 80 ) * thickness * opticThickness
					y: contours[0].nodes[1].y
					typeOut: 'line'
					expand:
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[1].nodes[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[0].x ) * ( 175 / 600 )
					y: contours[0].nodes[1].y
					dirOut: 0
					expand:
						width: ( 60 / 80 ) * thickness * opticThickness * contrast
						angle:( - 115 ) / 180 * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 360 + 200 * width - (23),
						contours[0].nodes[0].expandedTo[1].x + 0.25 * ( 100 / 80 ) * thickness * opticThickness
					)
					y: contours[1].nodes[4].expandedTo[0].y + ( contours[1].nodes[0].expandedTo[0].y - contours[1].nodes[4].expandedTo[0].y ) * ( 360 / 660 ) - (9)
					dirIn: Math.PI / 2
					type: 'smooth'
					tensionIn: 1.1
					tensionOut: 1.1
					expand:
						width: ( 100 / 80 ) * thickness * opticThickness
						angle:( - 160 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[1].nodes[4].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[0].x ) * ( 140 / 495 )
					y: 0
					typeOut: 'line'
					expand:
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle:( 92 ) / 180 * Math.PI
						distr: 0
				4:
					x: contours[0].nodes[1].expandedTo[1].x - ( 25 / 80 ) * thickness * opticThickness
					y: contours[0].nodes[0].y
					expand:
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class: 'lowerLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
			parameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		1:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
