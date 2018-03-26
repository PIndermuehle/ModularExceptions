private
doesNotUnderstand: aMessage
	^wrappedMethod isNil ifTrue: [super doesNotUnderstand: aMessage]
		ifFalse: [wrappedMethod perform: aMessage selector withArguments: aMessage arguments]
	