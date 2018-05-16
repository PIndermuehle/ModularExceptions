instance creation
installOn: aClass selector: aSelector
	|newInstance|
	(aClass lookupSelector: aSelector) isNil ifTrue: 
	[^NotYetImplemented  signal: 'This selector does not exist: #',aSelector, ' in Class: ', aClass name] .
	newInstance := self new.
	newInstance selector: aSelector.
	newInstance wrappedClass: aClass.
	newInstance install.
	^newInstance.