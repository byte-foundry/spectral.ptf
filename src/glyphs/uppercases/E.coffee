exports.glyphs['E_cap'] =
	unicode: 'E'
	glyphName: 'E'
	characterName: 'LATIN CAPITAL LETTER E'
	ot:
		advanceWidth: contours[3].nodes[0].x + spacingRight
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
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
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
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					typeOut: 'line'
					expand:
						width: ( 55 / 80 ) * thickness * opticThickness * contrast * contrastExtremity
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 210 + 200 * width + Math.max( 0, ( 20 / 80 ) * thickness - 20 )
					y: contours[1].nodes[0].expandedTo[0].y
					expand:
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x
					y: ( 340 / 660 ) * capHeight * crossbar
					typeOut: 'line'
					expand:
						width: ( 55 / 80 ) * thickness * opticThickness * contrast * contrastExtremity
						angle:( - 90 ) / 180 * Math.PI
						distr: 0.5
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 125 + 200 * width + Math.max( 0, ( 20 / 80 ) * thickness - 20 )
					y: contours[2].nodes[0].y
					expand:
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0.5
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + 235 + 200 * width + Math.max( 0, ( 20 / 80 ) * thickness - 20 )
					y: contours[3].nodes[1].expandedTo[0].y
					expand:
						width: ( 55 / 80 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y
					typeOut: 'line'
					expand:
						width: ( 55 / 80 ) * thickness * opticThickness * contrast * contrastExtremity
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
		2:
			base: ['serif-horizontal', 'none']
			id: 'toprightbottom'
			class: 'upperRightInsideHoriz'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
					rotate: - 15 * serifRotate
			transformOrigin: contours[1].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'translateX', - ( Math.tan( (- (15 * 2) * serifRotate ) / 180 * Math.PI ) * ( ( 50 / 80 ) * thickness * opticThickness * contrast * 0.5 ) ) ]
			)
			parameters:
				serifWidth: Math.min( ( 115 / 65 ) * serifWidth, serifWidth + 50 )
				serifHeight: Math.min( ( 75 / 50 ) * serifHeight, serifHeight + 25 )
				serifMedian: Math.max( 0.23 * serifMedian, serifMedian - 0.12 )
		3:
			base: ['serif-horizontal-fake', 'none', 'serif-horizontal']
			id: 'toprighttop'
			class: 'upperRightHoriz'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
					reversed: true
					rotate: 15 * serifRotate
			transformOrigin: contours[1].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'translateX', - ( Math.tan( (- (15 * 2) * serifRotate ) / 180 * Math.PI ) * ( ( 50 / 80 ) * thickness * opticThickness * contrast * 0.5 ) ) ]
			)
		4:
			base: ['serif-horizontal', 'none']
			id: 'middlebottom'
			class: 'middleUpperHoriz'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1]
					noneAnchor: contours[2].nodes[1].expandedTo[1]
					opposite: contours[2].nodes[1].expandedTo[0]
			transformOrigin: contours[2].nodes[1].expandedTo[0]
			parameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 65 / 50 ) * serifHeight, serifHeight + 15 )
		5:
			base: ['serif-horizontal', 'none']
			id: 'middletop'
			class: 'middleLowerHoriz'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0]
					noneAnchor: contours[2].nodes[1].expandedTo[0]
					opposite: contours[2].nodes[1].expandedTo[1]
					reversed: true
			parameters:
				serifWidth: Math.min( ( 80 / 65 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 65 / 50 ) * serifHeight, serifHeight + 15 )
			transformOrigin: contours[2].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		6:
			base: ['serif-horizontal', 'none']
			id: 'bottomrighttop'
			parentAnchors:
				0:
					base: contours[3].nodes[0].expandedTo[1]
					noneAnchor: contours[3].nodes[0].expandedTo[1]
					opposite: contours[3].nodes[0].expandedTo[0]
					reversed: true
					rotate: - 15 * serifRotate
			transformOrigin: contours[3].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'translateX', - ( Math.tan( (- (15 * 2) * serifRotate ) / 180 * Math.PI ) * ( ( 50 / 80 ) * thickness * opticThickness * contrast * 0.5 ) ) ]
			)
			parameters:
				serifWidth: Math.min( ( 125 / 65 ) * serifWidth, serifWidth + 60 )
				serifHeight: Math.min( ( 75 / 50 ) * serifHeight, serifHeight + 25 )
				serifMedian: Math.max( 0.23 * serifMedian, serifMedian - 0.12 )
		7:
			base: ['serif-horizontal-fake', 'none', 'serif-horizontal']
			id: 'bottomrightbottom'
			parentAnchors:
				0:
					base: contours[3].nodes[0].expandedTo[0]
					noneAnchor: contours[3].nodes[0].expandedTo[0]
					opposite: contours[3].nodes[0].expandedTo[1]
					rotate: 15 * serifRotate
			transformOrigin: contours[3].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'translateX', ( Math.tan( ((15 * 2) * serifRotate ) / 180 * Math.PI ) * ( ( 50 / 80 ) * thickness * opticThickness * contrast * 0.5 ) ) ]
			)
