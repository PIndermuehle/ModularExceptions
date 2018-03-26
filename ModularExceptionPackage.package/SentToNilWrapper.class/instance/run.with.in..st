evaluation
run: aSelector with: arguments in: aReceiver

	self inform: 'triggered wrapper'.
"
	|shouldCancel|
	shouldCancel := false.
	
	arguments do: [ :each| each isNil ifTrue: [shouldCancel := true] ].
	shouldCancel ifTrue: [^aReceiver].
	^aReceiver withArgs: arguments executeMethod: wrappedMethod.
	"