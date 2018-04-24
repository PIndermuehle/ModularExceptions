CodeManipulation
addNilFunctionWithValue: aName
	"Adds an empty function to the undefinedObject class"
	"This is a global solution to the SentToNil exception"
	(nil respondsTo: (aName,':') asSymbol) ifTrue:[^self].
	UndefinedObject compile: '',aName,': parameter1'
