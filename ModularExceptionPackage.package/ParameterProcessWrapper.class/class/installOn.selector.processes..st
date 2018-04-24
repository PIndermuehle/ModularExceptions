as yet unclassified
installOn: aClass selector: aSelector processes: aProcessList
	|newInstance|
	newInstance := self installOn: aClass selector: aSelector.
	newInstance processList: aProcessList.
	^newInstance.