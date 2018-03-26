tests
testFixDogAddChildThroughWrapper
	|wrapper aDog1| 
	wrapper := NullCancelWrapper installOn: Dog selector:#addChild:.
	aDog1 := Dog new.
	self assert: (aDog1 children size = 0).
	aDog1 addChild: Dog new.
	self assert: (aDog1 children size = 1).
	aDog1 addChild: nil.
	self assert: (aDog1 children size = 1).
	aDog1 addChild: Dog new.
	self assert: (aDog1 children size = 2).
	wrapper uninstall.
	