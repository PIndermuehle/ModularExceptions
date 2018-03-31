tests
testFixDogAddChildThroughMetaLinkNilCheck

	"test the fix for a nil parameter error through a metalink"
	|aDog1 meta|
	aDog1 := Dog new.
	meta := ModularException addMetaLinkFixerForNilParametersTo: #addChild: ofClass: Dog.
	
	aDog1 addChild: nil.
	self assert: (aDog1 children size = 0).
	aDog1 addChild: Dog new.
	self assert: (aDog1 children size = 1).
	aDog1 addChild: nil.
	self assert: (aDog1 children size = 1).
	aDog1 addChild: Dog new.
	self assert: (aDog1 children size = 2).
	meta uninstall.

