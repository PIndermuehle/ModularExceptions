tests
testFixCreateRectangle
	|wrapper newRect|

	wrapper := NullCancelWrapper installOn: Rectangle class selector: #origin:corner: returnValue: 
	[ Rectangle origin: 0@0 corner: 0@0 ].
	
	newRect := Rectangle origin: nil corner: nil.
	wrapper uninstall.
	


	self assert: newRect notNil.
	self assert: (newRect left) equals: 0.