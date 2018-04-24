tests
testFixgetColorFromCache
	
	|wrapper color colorArray| 

	
	color := ModularColor new.
	colorArray := {ModularColor blue. nil. ModularColor red. ModularColor green. nil}. 

	"Install Wrapper"
	wrapper := SkipExceptionWrapper installOn: ModularColor class selector: #getColorFromCache: 					returnValue: nil.
	
	"Send nil to color alpha:"
	[color := ModularColor getColorFromCache: 'SomeImpossibleColor'] 
	on: Error do: 
	[wrapper uninstall. self assert: false].
	wrapper uninstall.
	"color = Color2 white ifFalse: [wrapper uninstall. self assert: false]."
	
	self assert: color isNil.

