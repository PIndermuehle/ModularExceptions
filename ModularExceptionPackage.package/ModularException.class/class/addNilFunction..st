CodeManipulation
addNilFunction: aName
	(nil respondsTo: aName asSymbol) ifTrue:[^self].
	UndefinedObject compile: '',aName,''
