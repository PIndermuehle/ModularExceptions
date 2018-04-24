tests
testFixColorMixColor	
	
	|wrapper color colorArray| 

	
	color := ModularColor new.
	colorArray := {ModularColor blue. nil. ModularColor red. ModularColor green. nil}. 

	"Install Wrapper"
	wrapper := SkipExceptionWrapper installOn: ModularColor selector: #mixColors: returnValue: 0.0.
	
	"Send nil to color alpha:"
	[color mixColors: colorArray] on: Error do: [wrapper uninstall. self assert: false].
	wrapper uninstall.
	"color = Color2 white ifFalse: [wrapper uninstall. self assert: false]."
	
	self assert: color notNil.
	self assert: color red equals: 1.

