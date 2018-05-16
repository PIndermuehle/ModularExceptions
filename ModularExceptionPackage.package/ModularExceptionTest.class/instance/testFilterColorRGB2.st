tests
testFilterColorRGB2
	
	|meta color| 
	
	"This tests if the metalink for preprocessing parameters works"

	"Install Wrapper"
	meta := ModularException addMetaLinkPreProcessParametersTo: #r:g:b: ofClass: Color class.
	
	"Send nil to color alpha:"
	[color := Color r: 45 g: 123123 b: 123123] on: Error do: [:err|meta uninstall. err pass].
	meta uninstall.
	"color = Color2 white ifFalse: [wrapper uninstall. self assert: false]."
	
	self assert: color notNil.
	self assert: color red equals: 1.
	self assert: color green equals: 1.
	self assert: color blue equals: 1.

