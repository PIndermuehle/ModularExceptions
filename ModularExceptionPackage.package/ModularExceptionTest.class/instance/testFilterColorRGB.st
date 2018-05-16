tests
testFilterColorRGB
	
	|wrapper color| 
	
	"Install Wrapper"
	wrapper := ParameterProcessWrapper installOn: Color class selector: #r:g:b: 
	processes: { 
	[:red| (red max: 0) min: 1 ]. 
	[:green| (green max: 0) min: 1 ]. 
	[:blue| (blue max: 0) min: 1 ]. 
}.

	
	"Send nil to color alpha:"
	[color := Color r: 45 g: 123123 b: 123123] on: Error do: [:err|wrapper uninstall. err pass].
	wrapper uninstall.
	"color = Color2 white ifFalse: [wrapper uninstall. self assert: false]."
	
	self assert: color notNil.
	self assert: color red equals: 1.
	self assert: color green equals: 1.
	self assert: color blue equals: 1.

