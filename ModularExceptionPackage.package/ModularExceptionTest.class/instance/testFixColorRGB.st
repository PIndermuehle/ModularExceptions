tests
testFixColorRGB
	
	|wrapper color| 

	"Install Wrapper"
	wrapper := NullCancelWrapper installOn: Color class selector: #r:g:b: returnValue: 
	[Color r:0 g:0 b:0].


	"Send nil to color alpha:"
	[color := Color r: nil g: 1 b: 1] on: Error do: [wrapper uninstall. self assert: false].
	wrapper uninstall.
	"color = Color2 white ifFalse: [wrapper uninstall. self assert: false]."
	
	self assert: color notNil.