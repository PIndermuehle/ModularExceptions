as yet unclassified
installOn: aClass selector: aSelector returnValue: aReturnValue
	|newInstance|
	newInstance := self installOn: aClass selector: aSelector.
	newInstance returnValue: aReturnValue.
	^newInstance.