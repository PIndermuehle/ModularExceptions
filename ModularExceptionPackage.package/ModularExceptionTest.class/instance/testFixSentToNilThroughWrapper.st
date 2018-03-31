tests
testFixSentToNilThroughWrapper
	|wrapper aDog1| 

	"Tests the fix for a SentToNil error through a wrapper method."



	wrapper := SentToNilWrapper installOn: Dog selector:#makeBark:.
	aDog1 := Dog new.
	[  
	aDog1 makeBark: nil.
	aDog1 makeBark: nil.
	aDog1 makeBark: nil.
	]  on: Error do: [ wrapper uninstall. self assert: false].
	wrapper uninstall.