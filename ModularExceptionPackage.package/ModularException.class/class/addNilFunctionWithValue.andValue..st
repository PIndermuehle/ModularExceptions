CodeManipulation
addNilFunctionWithValue: aName andValue: value1
	(nil respondsTo: (aName,':',value1,':') asSymbol) ifTrue:[^self].
	UndefinedObject compile: '',aName,': parameter1 ',value1, ': parameter2'
