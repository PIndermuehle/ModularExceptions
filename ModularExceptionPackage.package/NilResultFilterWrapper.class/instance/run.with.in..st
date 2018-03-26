evaluation
run: aSelector with: arguments in: aReceiver
	|results|
	
	results := aReceiver withArgs: arguments executeMethod: wrappedMethod.
	
	^ModularException filterNilOutOfArray: results.