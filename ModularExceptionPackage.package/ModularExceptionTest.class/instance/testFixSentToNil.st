tests
testFixSentToNil
	|aNil aDog1| 
	"broken, needs sentToNilWrapper to implement #methodClass and #methodClass: and #package,
	however, defining these breaks this test and also causes massive errors. May have to understand what these methods actualy do"
	true ifTrue:[
	ModularException addNilFunctionWithValue: 'addChild'.
	aDog1 := Dog new.
	aDog1 addChild: Dog new.
	nil addChild: Dog new.
	aNil addChild: Dog new.
	aNil := nil.
	aNil addChild: Dog new.
	UndefinedObject class removeSelector: #addChild:
	]