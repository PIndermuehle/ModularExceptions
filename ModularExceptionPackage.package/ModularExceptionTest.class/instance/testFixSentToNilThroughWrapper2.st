tests
testFixSentToNilThroughWrapper2
	|wrapper aDog1 aDog2| 

	"Tests the fix for a SentToNil error through a wrapper method."

	wrapper := SentToNilWrapper installOn: Dog selector:#fathersBark.
	aDog1 := Dog new.
	aDog1 bark: 'Woof'.
	aDog2 := Dog new.
	aDog2 bark: 'Bark'.
	aDog1 father: aDog2.

	self assert: aDog1 fathersBark equals: aDog2 bark.
	aDog1 father: nil.
	self assert: aDog1 fathersBark equals: nil.

	wrapper uninstall.