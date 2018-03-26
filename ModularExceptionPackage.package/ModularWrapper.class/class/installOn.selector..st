instance creation
installOn: aClass selector: aSelector
	|newInstance|
	newInstance := self new.
	newInstance selector: aSelector.
	newInstance wrappedClass: aClass.
	newInstance install.
	^newInstance.