tests
testFixSetRed2	
	
	|wrapper color| 

	
	color := ModularColor new.
	color red: 0.5.
	"Install Wrapper"
	wrapper := NullCancelWrapper installOn: ModularColor selector: #red:.
	
	"Send nil to color alpha:"
	[color red: nil] on: Error do: [wrapper uninstall. self assert: false].
	wrapper uninstall.
	"color = Color2 white ifFalse: [wrapper uninstall. self assert: false]."
	
	self assert: color notNil.
	self assert: color red equals: 0.5.

