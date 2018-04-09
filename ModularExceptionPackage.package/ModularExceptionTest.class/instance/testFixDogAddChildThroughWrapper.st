tests
testFixDogAddChildThroughWrapper

	"Tests the fix for a nil parameter error through a wrapper method"
	|wrapper aDog1| 
	wrapper := NullCancelWrapper installOn: Dog selector:#addChild:.
	aDog1 := Dog new.
	self assert: aDog1 children size equals: 0.
	aDog1 addChild: Dog new.
	self assert: aDog1 children size equals: 1.
	aDog1 addChild: nil.
	self assert: aDog1 children size equals: 1.
	aDog1 addChild: Dog new.
	self assert: aDog1 children size equals: 2.
	wrapper uninstall.
	