actions
install
	[wrappedMethod := wrappedClass lookupSelector: selector.
	wrappedMethod isKindOf: self class] whileTrue: [wrappedMethod uninstall].
	wrappedClass addSelector: selector withMethod: self 