evaluation
run: aSelector with: arguments in: aReceiver

	|shouldCancel|
	shouldCancel := false.
	
	arguments do: [ :each| each isNil ifTrue: [shouldCancel := true] ].
	shouldCancel ifTrue: [^returnValue value].
	^aReceiver withArgs: arguments executeMethod: wrappedMethod.