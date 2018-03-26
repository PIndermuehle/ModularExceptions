CodeManipulation
addNilFunctionWithValue: aName
	(nil respondsTo: (aName,':') asSymbol) ifTrue:[^self].
	UndefinedObject compile: '',aName,': parameter1'
