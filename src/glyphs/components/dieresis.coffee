exports.glyphs['dieresis'] =
	glyphName: 'dieresis'
	characterName: 'DIAERESIS'
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
	tags: [
		'component',
		'diacritic'
	]
	components:
		0:
			base: 'dotaccent'
			parentAnchors:
				0:
					x: anchors[0].x - ( 100 / 2 ) - Math.max(
						40,
						Math.min(
							160,
							thickness
						)
					) / 2
					y: anchors[0].y
		1:
			base: 'dotaccent'
			parentAnchors:
				0:
					x: anchors[0].x + ( 100 / 2 ) + Math.max(
						40,
						Math.min(
							160,
							thickness
						)
					) / 2
					y: anchors[0].y
