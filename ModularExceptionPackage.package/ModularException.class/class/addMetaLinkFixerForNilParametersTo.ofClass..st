MetaLinks
addMetaLinkFixerForNilParametersTo: functionHeader ofClass: objectName
	"Attaches a function before another function"
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
			];
		selector: #value:value:value:value:;
		arguments:#(object selector arguments link);
		control: #instead.

	(objectName>>functionHeader) ast link: metaLink. 
	^metaLink 