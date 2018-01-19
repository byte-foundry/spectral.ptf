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
					typeOut: 'line'
					expand:
						width: ( 66 / 80 ) * thickness
						angle: 0
						distr: 0
				1:
					x: anchors[0].right
					y: xHeight + overshoot
					typeIn: 'line'
					expand:
						width: ( 66 / 80 ) * thickness
						angle: 0
						distr: 1
