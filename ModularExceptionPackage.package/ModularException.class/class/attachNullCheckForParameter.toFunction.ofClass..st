CodeManipulation
attachNullCheckForParameter: parameterName toFunction: aFunction ofClass: aClass

	"Pre appends a line of code to the method that cancels its execution if a parameter with name is null"

	self preAppendCode: parameterName, ' isNil ifTrue: [^self]' toFunction: aFunction ofClass: aClass.