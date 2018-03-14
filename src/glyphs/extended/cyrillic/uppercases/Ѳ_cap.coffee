exports.glyphs['Ѳ_cap'] =
	unicode: 'Ѳ'
	glyphName: 'Ѳ'
	characterName: 'CYRILLIC CAPITAL LETTER Ѳ'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 70
		spacingRight: 50 * spacing + 70
	tags: [
		'all',
		'cyrillic',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + ( 45 / 80 ) * diacriticHeight
			left: contours[0].nodes[0].expandedTo[0].x
			right: contours[0].nodes[2].expandedTo[0].x
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft + (24/80) * thickness * opticThickness
					y: ( 330 / 660 ) * capHeight + (7)
					dirOut: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 102 / 80 ) * thickness * opticThickness
						angle:( 20 ) / 180 * Math.PI
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: capHeight + overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 52 / 80 ) * thickness * opticThickness * contrast
						angle:( - 110 ) / 180 * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 465 + 200 * width - (22),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 102 / 80 ) * thickness * opticThickness + 10
					)
					y: contours[0].nodes[0].expandedTo[0].y - (9)
					dirOut:( - 90 ) / 180 * Math.PI
					type: 'smooth'
					expand:
						width: ( 102 / 80 ) * thickness * opticThickness
						angle:( 200 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 54 / 80 ) * thickness * opticThickness * contrast
						angle:( 68 ) / 180 * Math.PI
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[0].y - 30
					dirOut: ( 30 / 180 ) * Math.PI
					expand:
						width: ( 36 / 80 ) * thickness * opticThickness * contrast
						angle: ( 125 / 180 ) * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: contours[0].nodes[3].expandedTo[0].y + ( contours[0].nodes[1].expandedTo[0].y - contours[0].nodes[3].expandedTo[0].y ) * 0.5
					dirIn: ( 170 / 180 ) * Math.PI
					type: 'smooth'
					expand:
						width: ( 96 / 80 ) * thickness * opticThickness
						angle: ( 80 / 180 ) * Math.PI
						distr: 0.5
				2:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[0].y + 30
					dirIn: ( 215 / 180 ) * Math.PI
					expand:
						width: ( 36 / 80 ) * thickness * opticThickness * contrast
						angle: ( 125 / 180 ) * Math.PI
						distr: 1
