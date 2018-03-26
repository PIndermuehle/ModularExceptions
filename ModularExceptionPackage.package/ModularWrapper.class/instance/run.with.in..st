evaluation
run: aSelector with: arguments in: aReceiver
	self inform: 'Modular wrapper was triggered'.
	^aReceiver withArgs: arguments executeMethod: wrappedMethod.