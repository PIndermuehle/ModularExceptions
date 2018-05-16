actions
uninstall
	wrappedMethod notNil ifTrue:
	[
		wrappedClass addSelector: selector withMethod: wrappedMethod 
	].
