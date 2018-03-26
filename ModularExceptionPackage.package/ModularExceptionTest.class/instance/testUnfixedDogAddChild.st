tests
testUnfixedDogAddChild
	|aDog1| 
	aDog1 := Dog new.
	self assert: (aDog1 children size = 0).
	aDog1 addChild: nil.
	self assert: (aDog1 children size = 1).
	aDog1 addChild: Dog new.
	self assert: (aDog1 children size = 2).
	aDog1 addChild: nil.
	self assert: (aDog1 children size = 3).
	aDog1 addChild: Dog new.
	self assert: (aDog1 children size = 4).
	