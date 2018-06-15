exports.controls = [
	tab: true
	label: 'Func'
	icon: '...'
	parameters: [
		name: 'xHeight'
		label: 'x Height'
		min: 300
		max: 900
		step: 1
		init: 450
		minAdvised: 300
		maxAdvised: 900
		disabled: false
		advanced: false
		group: 'Vertical Settings'
	,
		name: 'capDelta'
		label: 'Capital Height'
		min: 0
		max: 400
		step: 1
		init: 210
		minAdvised: 0
		maxAdvised: 400
		disabled: false
		advanced: false
		group: 'Vertical Settings'
	,
		name: 'smallCapDelta'
		label: 'SC Height'
		min: 0
		max: 2.5
		step: 0.01
		init: 1
		minAdvised: 0
		maxAdvised: 1.5
		disabled: false
		advanced: true
		group: 'Vertical Settings'
	,
		name: 'ascender'
		label: 'Ascender'
		min: 50
		max: 800
		step: 1
		init: 300
		minAdvised: 190
		maxAdvised: 400
		disabled: false
		advanced: false
		group: 'Vertical Settings'
	,
		name: 'descender'
		label: 'Descender'
		min: -850
		max: -50
		step: 1
		init: -250
		minAdvised: -290
		maxAdvised: -150
		disabled: false
		advanced: false
		group: 'Vertical Settings'
	,
		name: 'crossbar'
		label: 'Crossbar'
		min: 0.8
		max: 1.1
		step: 0.001
		init: 1
		minAdvised: 0.88
		maxAdvised: 1.05
		disabled: false
		advanced: false
		group: 'Vertical Settings'
	,
		name: 'diacriticHeight'
		label: 'Diacritic Position'
		min: -5
		max: 150
		step: 1
		init: 80
		minAdvised: 20
		maxAdvised: 100
		disabled: false
		advanced: false
		group: 'Vertical Settings'
	,
		name: 'width'
		label: 'Width'
		min: 0.4
		max: 5
		step: 0.01
		init: 1
		minAdvised: 0.70
		maxAdvised: 2.50
		disabled: false
		advanced: false
		group: 'Horizontal Settings'
	,
		name: '_scWidth'
		label: 'SC Width'
		min: 0.5
		max: 1.5
		step: 0.05
		init: 0.7
		minAdvised: 0.65
		maxAdvised: 0.75
		disabled: false
		advanced: true
		group: 'Horizontal Settings'
	,
		name: 'slant'
		label: 'Slant'
		min: -15
		max: 30
		step: 0.2
		init: 0
		minAdvised: -15
		maxAdvised: 25
		disabled: false
		advanced: false
		group: 'Horizontal Settings'
	,
		name: 'spacing'
		label: 'Spacing'
		min: -1
		max: 3
		step: 0.01
		init: 0
		minAdvised: -1
		maxAdvised: 3
		disabled: false
		advanced: false
		group: 'Spacing'
	,
		name: 'overshoot'
		label: 'Overshoot'
		min: 0
		max: 20
		step: 1
		init: 10
		minAdvised: 0
		maxAdvised: 20
		disabled: false
		advanced: true
		group: 'Overshoot'
	]
,
	tab: true
	label: 'Style'
	icon: '...'
	parameters: [
		name: 'thickness'
		label: 'Thickness'
		min: 4
		max: 180
		step: 1
		init: 80
		minAdvised: 4
		maxAdvised: 150
		disabled: false
		advanced: false
		group: 'Style'
	,
		name: 'opticThickness'
		label: 'Capital thickness'
		min: 0.7
		max: 1.3
		step: 0.01
		init: 1
		minAdvised: 0.7
		maxAdvised: 1.3
		disabled: false
		advanced: false
		group: 'Style'
	,
		name: '_scThickness'
		label: 'SC Thickness'
		min: 0.5
		max: 1.5
		step: 0.05
		init: 0.9
		minAdvised: 0.85
		maxAdvised: 1
		disabled: false
		advanced: true
		group: 'Style'
	,
		name: '_contrast'
		label: 'Contrast'
		min: -1.3
		max: -0.15
		step: 0.01
		init: -1
		minAdvised: -1
		maxAdvised: -0.15
		disabled: false
		advanced: false
		group: 'Style'
	,
		name: '_contrastExtremity'
		label: 'extremity'
		min: -1.5
		max: -0.2
		step: 0.01
		init: -1
		minAdvised: -1
		maxAdvised: -0.5
		disabled: false
		advanced: true
		child: true
		group: 'Style'
	,
		name: 'aperture'
		label: 'Aperture'
		min: 0.3
		max: 2
		step: 0.01
		init: 1
		minAdvised: 0.3
		maxAdvised: 2
		disabled: false
		advanced: false
		group: 'Style'
	,
		name: 'apertureTop'
		label: 'Top'
		min: 0.3
		max: 1.7
		step: 0.01
		init: 1
		minAdvised: 0.1
		maxAdvised: 1
		disabled: false
		advanced: true
		child: true
		group: 'Style'
	,
		name: 'apertureBottom'
		label: 'Bottom'
		min: 0.3
		max: 1.7
		step: 0.01
		init: 1
		minAdvised: 0.1
		maxAdvised: 1
		disabled: false
		advanced: true
		child: true
		group: 'Style'
	,
		name: 'curviness'
		label: 'Curviness'
		min: 0.1
		max: 1.4
		step: 0.1
		init: 0.6
		minAdvised: 0.55
		maxAdvised: 0.8
		disabled: false
		advanced: false
		group: 'Style'
	# ,
	# 	name: 'inktrap'
	# 	label: 'inktrap'
	# 	min: 0.01
	# 	max: 2
	# 	step: 0.01
	# 	init: 1
	# 	minAdvised: 0
	# 	maxAdvised: 1
	# 	disabled: false
	# 	advanced: false
	# ,
	# 	name: 'breakPath'
	# 	label: 'Break Path'
	# 	min: 0
	# 	max: 1
	# 	step: 0.1
	# 	init: 1
	# 	minAdvised: 0.5
	# 	maxAdvised: 1
	# 	disabled: true
	# 	advanced: false
	]
,
	tab: true
	label: 'Serif'
	icon: '...'
	parameters: [
		name: 'serifWidth'
		label: 'Serif Width'
		min: 0.05 #temporary FIX (instead 0)
		max: 200
		step: 1
		init: 65
		minAdvised: 0.05
		maxAdvised: 200
		disabled: false
		advanced: false
		group: 'Proportions'
	,
		name: 'serifHeight'
		label: 'Serif Height'
		min: 0.001
		max: 100
		step: 1
		init: 50
		minAdvised: 0.001
		maxAdvised: 100
		disabled: false
		advanced: false
		group: 'Proportions'
	,
		name: 'midWidth'
		label: 'Middle Width'
		min: 0.5
		max: 1.5
		step: 0.01
		init: 1
		minAdvised: 0.5
		maxAdvised: 1.5
		disabled: false
		advanced: false
		group: 'Endings'
	,
		name: 'serifMedian'
		label: 'Serif Median'
		min: 0.2
		max: 1.5
		step: 0.01
		init: 0.35
		minAdvised: 0
		maxAdvised: 1
		disabled: false
		advanced: false
		group: 'Endings'
	,
		name: 'serifCurve'
		label: 'Bracket Curve'
		min: 0
		max: 100
		step: 1
		init: 0
		minAdvised: 0
		maxAdvised: 100
		disabled: false
		advanced: false
		group: 'Brackets'
	,
		name: 'serifRoundness'
		label: 'Bracket Roundness'
		min: 0
		max: 1.8
		step: 0.01
		init: 1
		minAdvised: 0
		maxAdvised: 1.8
		disabled: false
		advanced: false
		group: 'Brackets'
	,
		name: 'serifArc'
		label: 'Serif Arc'
		min: -1.5
		max: 0.6
		step: 0.01
		init: 0
		minAdvised: -0.10
		maxAdvised: 0.6
		disabled: false
		advanced: false
		group: 'Serif Arc'
	,
		name: 'spurHeight'
		label: 'Spur Height'
		min: 0
		max: 3
		step: 1
		init: 1.3
		minAdvised: 0
		maxAdvised: 2.20
		disabled: false
		advanced: false
		group: 'Adjustments'
	,
		name: 'serifRotate'
		label: 'Serif Rotation'
		min: -1
		max: 2
		step: 0.1
		init: 0
		minAdvised: 0.50
		maxAdvised: 1.30
		disabled: false
		advanced: false
		group: 'Adjustments'
	,
		name: 'serifTerminal'
		label: 'Serif Terminal'
		min: -0.5
		max: 2
		step: 0.01
		init: 0
		minAdvised: -0.2
		maxAdvised: 0.8
		disabled: false
		advanced: true
		group: 'Advanced'
	,
		name: 'serifTerminalCurve'
		label: 'Serif Terminal Curve'
		min: 0
		max: 2
		step: 0.01
		init: 1
		minAdvised: 0
		maxAdvised: 1.5
		disabled: false
		advanced: true
		group: 'Advanced'
	# ,
	# 	name: 'serifAperture'
	# 	label: 'Serif Aperture'
	# 	min: 0
	# 	max: 10
	# 	step: 0.01
	# 	init: 2.5
	# 	minAdvised: 0
	# 	maxAdvised: 5
	# 	disabled: false
	# ,
	# 	name: 'serifBall'
	# 	label: 'Terminal Ball'
	# 	min: 0.01
	# 	max: 3
	# 	step: 0.01
	# 	init: 1
	# 	minAdvised: 0
	# 	maxAdvised: 1.1
	# 	disabled: false
	# 	advanced: false
	]
]
