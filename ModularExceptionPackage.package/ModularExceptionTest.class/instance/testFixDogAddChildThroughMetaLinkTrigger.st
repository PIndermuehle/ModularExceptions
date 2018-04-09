tests
testFixDogAddChildThroughMetaLinkTrigger

	"Test the fix for a nil parameter error through a #fixIntegrity method triggered through a metalink"
	|aDog1 meta|
	meta := ModularException addMetaLinkFixTriggerForFunction: #addChild: ofClass: Dog.
	aDog1 := Dog new.
	self assert: aDog1 children size equals: 0.
	aDog1 addChild: Dog new.
	self assert: aDog1 children size equals: 1.
	aDog1 addChild: nil.
	self assert: aDog1 children size equals: 1.
	aDog1 addChild: Dog new.
	self assert: aDog1 children size equals: 2.

	meta uninstall.

