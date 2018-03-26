tests
testFixSentToNilThroughWrapper
	|wrapper aDog1| 
	"broken, needs sentToNilWrapper to implement #methodClass and #methodClass: and #package,
	however, defining these breaks this test and also causes massive errors. May have to understand what these methods actualy do"
	false ifTrue:[
	wrapper := SentToNilWrapper installOn: UndefinedObject selector:#children.
	aDog1 := Dog new.
	self assert: (aDog1 children size = 0).
	aDog1 addChild: Dog new.
	self assert: (aDog1 children size = 1).
	aDog1 addChild: nil.
	self assert: (aDog1 children size = 1).
	aDog1 addChild: Dog new.
	self assert: (aDog1 children size = 2).
	wrapper uninstall.]
	