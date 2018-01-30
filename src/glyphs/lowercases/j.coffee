exports.glyphs['j'] =
	unicode: 'j'
	glyphName: 'j'
	characterName: 'LATIN SMALL LETTER J'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 54 + serifWidth
		spacingRight: 50 * spacing + 53 + serifWidth
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x - 63
					y: ( 230 / 250 ) * descender
					dirOut:( 32 ) / 180 * Math.PI
					tensionOut: 1.4
					expand:
						width: ( 18 / 80 ) * thickness * contrast * contrastExtremity
						angle:( - 90 ) / 180 * Math.PI
						distr: 0.75
				1:
					x: spacingLeft + (40/80) * thickness
					y: 0 - (6)
					type: 'smooth'
					typeOut: 'line'
					expand:
						width: ( 80.6 / 80 ) * thickness
						angle:( 8 ) / 180 * Math.PI
						distr: 0.5
				2:
					x: contours[0].nodes[1].x
					y: xHeight + overshoot - Math.max( 0, serifHeight * serifArc ) - ( Math.sin( (15 * spurHeight) / 180 * Math.PI ) * ( thickness ) )
					expand:
						width: thickness
						angle: 0
						distr: 0.5

	components:
		0:
			base: ['spur-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftSpur'
			parentAnchors:
				0:
					base: contours[0].nodes[2].expandedTo[0]
					noneAnchor: contours[0].nodes[2].expandedTo[0]
					opposite: contours[0].nodes[2].expandedTo[1]
					reversed: true
					rotate: -15 * spurHeight
			transformOrigin: contours[0].nodes[2].expandedTo[0]
			transforms: Array(
				[ 'translateY', - ( Math.sin( (15 * spurHeight) / 180 * Math.PI ) * ( thickness ) ) ]
				[ 'scaleY', -1 ],
			)
			parameters:
				serifHeight: Math.min( ( 85 / 50 ) * serifHeight, serifHeight + 35 )
				serifMedian: Math.max( ( 0.20 ) * serifMedian, serifMedian - 0.8 )
		1:
			base: 'dotaccent'
			parentAnchors:
				0:
					x: contours[0].nodes[1].x
					y: xHeight + diacriticHeight
					optical: 120
