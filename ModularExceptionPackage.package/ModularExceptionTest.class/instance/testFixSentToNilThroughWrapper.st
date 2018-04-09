tests
testFixSentToNilThroughWrapper
	|wrapper aDog1 hasError| 

	"Tests the fix for a SentToNil error through a wrapper method."

	aDog1 := Dog new.
	aDog1 bark: 'Bark'.
	aDog1 father: nil.
	aDog1 mother: nil.

	[  
		aDog1 testBark.
	]  
	on: Error do: 
	[hasError := true].

	self assert: hasError equals: true.

	wrapper := SentToNilWrapper installOn: Dog selector:#testBark.
	
	[  
		self assert: aDog1 testBark equals: 'Bark'.
	]  
	on: Error do: 
	[ wrapper uninstall. self assert: false].
	
	wrapper uninstall.