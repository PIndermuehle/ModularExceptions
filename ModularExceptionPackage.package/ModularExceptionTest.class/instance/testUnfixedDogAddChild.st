tests
testUnfixedDogAddChild

	"Tests if the Dog #addChild: still works as expected if left unfixed"
	|aDog1| 
	aDog1 := Dog new.
	self assert: aDog1 children size equals: 0.
	aDog1 addChild: nil.
	self assert: aDog1 children size equals: 1.
	aDog1 addChild: Dog new.
	self assert: aDog1 children size equals: 2.
	aDog1 addChild: nil.
	self assert: aDog1 children size equals: 3.
	aDog1 addChild: Dog new.
	self assert: aDog1 children size equals: 4.
	