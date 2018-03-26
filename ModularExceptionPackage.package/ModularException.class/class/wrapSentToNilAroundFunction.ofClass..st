WrapperMethods
wrapSentToNilAroundFunction: aSelector ofClass: aClass
	^SentToNilWrapper installOn: UndefinedObject selector: aSelector.