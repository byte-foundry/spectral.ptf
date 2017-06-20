exports.glyphs['stroke'] =
	glyphName: "stroke"
	characterName: "stroke"
	anchors:
		0:
			left: parentAnchors[0].left
			right: parentAnchors[0].right
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].left
					y: 0 - overshoot
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 66 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					x: anchors[0].right
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 66 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 1
					})
