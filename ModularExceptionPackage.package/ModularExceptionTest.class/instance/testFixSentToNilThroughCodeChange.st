tests
testFixSentToNilThroughCodeChange
	|aNil aDog1| 

	"Tests the fix for a SentToNil error through a code change. This is a global fix"

	
	ModularException addNilFunctionWithValue: 'addChild'.
	aDog1 := Dog new.
	aDog1 addChild: Dog new.
	nil addChild: Dog new.
	aNil := nil.
	aNil addChild: Dog new.
	aNil addChild: Dog new.
	UndefinedObject removeSelector: #addChild:
	