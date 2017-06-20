exports.glyphs['dotaccent'] =
	glyphName: 'dotaccent'
	characterName: 'DOT ACCENT'
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y + diacriticHeight
			optical: if typeof parentAnchors[0].optical != 'undefined' then parentAnchors[0].optical else 100
	tags: [
		'component',
		'diacritic'
	]
	contours:
		0:
			skeleton: false
			closed: true
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					dirOut: 180 + 'deg'
					type: 'smooth'
				1:
					x: anchors[0].x - Math.max(
						40,
						Math.min(
							160,
							thickness * ( anchors[0].optical / 80 )
						)
					) / 2
					y: anchors[0].y + Math.max(
						40,
						Math.min(
							160,
							thickness * ( anchors[0].optical / 80 )
						)
					) / 2
					dirOut: 90 + 'deg'
					type: 'smooth'
				2:
					x: anchors[0].x
					y: anchors[0].y + Math.max(
						40,
						Math.min(
							160,
							thickness * ( anchors[0].optical / 80 )
						)
					)
					dirOut: 0 + 'deg'
					type: 'smooth'
				3:
					x: anchors[0].x + Math.max(
						40,
						Math.min(
							160,
							thickness * ( anchors[0].optical / 80 )
						)
					) / 2
					y: anchors[0].y + Math.max(
						40,
						Math.min(
							160,
							thickness * ( anchors[0].optical / 80 )
						)
					) / 2
					dirOut: - 90 + 'deg'
					type: 'smooth'
