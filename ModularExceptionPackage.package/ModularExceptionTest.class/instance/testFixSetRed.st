tests
testFixSetRed	
	
	|wrapper color| 

	
	color := ModularColor new.
	color red: 0.5.
	"Install Wrapper"
	wrapper := ParameterProcessWrapper installOn: ModularColor selector: #red: 
	processes: { [:red| (red max: 0) min: 1 ] }.
	
	"Send nil to color alpha:"
	[color red: 45.0] on: Error do: [wrapper uninstall. self assert: false].
	wrapper uninstall.
	"color = Color2 white ifFalse: [wrapper uninstall. self assert: false]."
	
	self assert: color notNil.
	self assert: color red equals: 1.

