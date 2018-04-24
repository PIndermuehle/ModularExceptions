actions
install
	wrappedMethod := wrappedClass lookupSelector: selector.
	wrappedClass addSelector: selector withMethod: self 
	

