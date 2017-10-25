exports.glyphs['caron'] =
	glyphName: 'caron'
	characterName: 'CARON'
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
			base: 'circumflex'
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
			transformOrigin: anchors[0]
			transforms: Array(
				['translateY', - 180]
				[ 'scaleY', -1 ],
			)
