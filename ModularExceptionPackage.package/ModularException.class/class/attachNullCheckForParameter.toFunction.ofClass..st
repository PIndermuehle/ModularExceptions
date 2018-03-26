CodeManipulation
attachNullCheckForParameter: parameterName toFunction: aFunction ofClass: aClass

	self preAppendCode: parameterName, ' isNil ifTrue: [^self]' toFunction: aFunction ofClass: aClass.