tests
testFixSentToNilThroughMetaLink
	|meta aDog1| 

	"Tests the fix for a SentToNil error through a metalink. This is a local fix"

" Creates an Error, PrimitiveFailure"
"
	meta := ModularException addMetaLinkFixerForSentToNilTo: #makeBark: ofClass: Dog.
	aDog1 := Dog new.
	[  
	aDog1 makeBark: nil.
	aDog1 makeBark: nil.
	aDog1 makeBark: nil.
	] on: Error do: [ meta uninstall. self assert: false].

	meta uninstall."