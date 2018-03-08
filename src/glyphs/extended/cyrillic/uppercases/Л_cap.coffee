exports.glyphs['Л_cap'] =
	unicode: 'Л'
	glyphName: 'Л'
	characterName: 'CYRILLIC CAPITAL LETTER Л'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 37
		spacingRight: 50 * spacing + 65 + ( 80 / 65 ) * serifWidth
	tags: [
		'all',
		'cyrillic',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 34
					y: - overshoot
					dirOut: 0
					expand:
						width: ( 86 / 80 ) * thickness * opticThickness
						angle: ( 102 / 180 ) * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[2].y - ( 55 / 80 ) * thickness * opticThickness * contrast * contrastExtremity - 50
					dirIn: - Math.PI / 2
					typeOut: 'line'
					tensionIn: 1.4
					expand:
						width: ( 60 / 80 ) * thickness * opticThickness * contrast
						angle: Math.PI
						distr: 0.75
				2:
					x: contours[0].nodes[0].x + 114 * width + (15)
					y: capHeight
					typeIn: 'line'
					expand:
						width: ( 60 / 80 ) * thickness * opticThickness * contrast
						angle: Math.PI
						distr: 0.75
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x + 190 + 200 * width - (23),
						contours[0].nodes[1].expandedTo[0].x + 0.75 * ( 90 / 80 ) * thickness * opticThickness + 10
					)
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 90 / 80 ) * thickness * opticThickness
						angle: Math.PI
						distr: 0.25
				1:
					x: contours[1].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					expand:
						width: ( 90 / 80 ) * thickness * opticThickness
						angle: Math.PI
						distr: 0.25
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x
					y: capHeight
					typeOut: 'line'
					expand:
						width: ( 55 / 80 ) * thickness * opticThickness * contrast * contrastExtremity
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[1].nodes[0].expandedTo[1].x
					y: capHeight
					expand:
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class: 'lowerLeftStump'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
			parameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			class: 'lowerLeftInsideStump'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
			parameters:
				serifWidth: Math.min( ( 85 / 65 ) * serifWidth, serifWidth + 20 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		2:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[2].expandedTo[1]
					noneAnchor: contours[0].nodes[2].expandedTo[1]
					opposite: contours[0].nodes[2].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[2].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
		3:
			base: ['serif-vertical', 'none']
			id: 'topright'
			class: 'upperRightStump'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
			transformOrigin: contours[1].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min( ( 75 / 65 ) * serifWidth, serifWidth + 10 )
				serifHeight: Math.min( ( 55 / 50 ) * serifHeight, serifHeight + 5 )
