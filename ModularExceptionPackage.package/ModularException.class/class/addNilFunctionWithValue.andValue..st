CodeManipulation
addNilFunctionWithValue: aName andValue: value1
	"Adds an empty function to the undefinedObject class"
	"This is a global solution to the SentToNil exception"
	(nil respondsTo: (aName,':',value1,':') asSymbol) ifTrue:[^self].
	UndefinedObject compile: '',aName,': parameter1 ',value1, ': parameter2'
