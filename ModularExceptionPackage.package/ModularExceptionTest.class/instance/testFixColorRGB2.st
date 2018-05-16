tests
testFixColorRGB2
	
	|meta color| 

	"Install Wrapper"
	meta := ModularException addMetaLinkFixerForNilParametersTo: #r:g:b: ofClass: Color class.


	"Send nil to color alpha:"
	[color := Color r: nil g: 1 b: 1] on: Error do: [meta uninstall. self assert: false].
	meta uninstall.
	"color = Color2 white ifFalse: [wrapper uninstall. self assert: false]."
	
	self assert: color notNil.