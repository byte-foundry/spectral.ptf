exports.lib =
	parameters:
		capHeight: xHeight + capDelta
		scCapHeight: xHeight + ( 115 / 210 ) * capDelta * smallCapDelta
		scThickness: thickness * _scThickness
		scWidth: width * _scWidth
		contrast: _contrast * -1
		contrastExtremity: _contrastExtremity * -1
		ascenderHeight: xHeight + ascender
		minThickness: Math.max( 40, Math.min( 100, thickness ))
		correctWidthAperture: Math.max(0, 180 - 180 * width)
		correctTensionAperture: 1.2 * ( aperture / aperture ) # dirty workaround
		serifAperture: ( aperture / aperture ) # dirty workaround
		serifHeight:
			if serifWidth < 0.1 && serifHeight < 0.1
			then Math.max(5, serifHeight)
			else serifHeight
