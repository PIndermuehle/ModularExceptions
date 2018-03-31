tests
testFixDogChildrenThroughWrapper

	"Tests the fix for returning collections with nil elements through a wrapper"
	|wrapper aDog1| 
	wrapper := NilResultFilterWrapper installOn: Dog selector:#children.
	aDog1 := Dog new.
	self assert: (aDog1 children size = 0).
	aDog1 addChild: Dog new.
	self assert: (aDog1 children size = 1).
	aDog1 addChild: nil.
	self assert: (aDog1 children size = 1).
	aDog1 addChild: Dog new.
	self assert: (aDog1 children size = 2).
	wrapper uninstall.
	