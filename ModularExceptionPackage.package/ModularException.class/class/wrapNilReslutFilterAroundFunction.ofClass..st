WrapperMethods
wrapNilReslutFilterAroundFunction: aSelector ofClass: aClass
	^NilResultFilterWrapper installOn: aClass selector: aSelector.