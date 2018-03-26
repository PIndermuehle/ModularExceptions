tests
testFixDogAddChildThroughCodeChange
	|aDog1 oldMethod|
	oldMethod := (Dog>>#addChild:) definition .
	ModularException attachNullCheckForParameter: 'aChild' toFunction: #addChild: ofClass: Dog.
	aDog1 := Dog new.
	self assert: (aDog1 children size = 0).
	aDog1 addChild: Dog new.
	self assert: (aDog1 children size = 1).
	aDog1 addChild: nil.
	self assert: (aDog1 children size = 1).
	aDog1 addChild: Dog new.
	self assert: (aDog1 children size = 2).
	Dog compile: oldMethod.