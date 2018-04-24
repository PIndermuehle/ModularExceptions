MetaLinks
addMetaLinkFixerForNilParametersTo: functionHeader ofClass: objectName
	"Adds a metalink fixer for nil parameters to the method. This cancels the method if a parameter is nil"
	|metaLink|
	
	metaLink := MetaLink new
		metaObject: [:object :selector :args :link|
			|aMethod shouldRun|
			shouldRun := true.
			args do:[:each | each isNil ifTrue:[shouldRun := false]].
			shouldRun ifTrue:[
				link uninstall.
				aMethod := (object class lookupSelector: selector).
				object withArgs: args executeMethod: aMethod.
				(object class>>selector) ast link: link.
				]
			ifFalse: object.
			];
		selector: #value:value:value:value:;
		arguments:#(object selector arguments link);
		control: #instead.


	(objectName>>functionHeader) ast link: metaLink. 
	^metaLink 