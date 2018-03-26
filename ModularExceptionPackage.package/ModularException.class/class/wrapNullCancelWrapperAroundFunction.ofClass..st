WrapperMethods
wrapNullCancelWrapperAroundFunction: aSelector ofClass: aClass
	^NullCancelWrapper installOn: aClass selector: aSelector.