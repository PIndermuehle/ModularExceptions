as yet unclassified
uninstallWrappersOn: aClass selector: aSelector
	| wrappedMethod |

	wrappedMethod := aClass lookupSelector: aSelector.
	(wrappedMethod isKindOf: ModularWrapper) ifTrue: 
	[
	wrappedMethod uninstall.
	self inform: 'uninstalled a wrapper'.
	
	]
	ifFalse:[
	self inform: 'No wrapper on this method'.
	].