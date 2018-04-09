tests
testFixSentToNilThroughMetaLink
	|meta aDog1| 

	"Tests the fix for a SentToNil error through a metalink. This is a local fix"

" Creates an Error, PrimitiveFailure"
"
	meta := ModularException addMetaLinkFixerForSentToNilTo: #testBark ofClass: Dog.
	
	aDog1 := Dog new.
	aDog1 bark: 'Bark'.
	aDog1 father: nil.
	aDog1 mother: nil.
	
	[  
		self assert: aDog1 testBark equals: 'Bark'.
	]  
	on: Error do: 
	[:err| meta uninstall. err pass].

	meta uninstall."