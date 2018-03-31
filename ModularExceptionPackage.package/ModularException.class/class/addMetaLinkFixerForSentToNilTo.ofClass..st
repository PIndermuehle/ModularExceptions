MetaLinks
addMetaLinkFixerForSentToNilTo: functionHeader ofClass: objectName
	"Attaches a metalink fixer to a method for SentToNil error."
	|metaLink|
	
	metaLink := MetaLink new
		metaObject: [:object :selector :args :link|
			|aMethod|
		
			aMethod := (object class lookupSelector: selector).
			link uninstall.
			[	
				object withArgs: args executeMethod: aMethod.
				
			] 
			on: MessageNotUnderstood do: [:sig | 
				sig resume.
			].
			(object class>>selector) ast link: link.
				
		];
		selector: #value:value:value:value:;
		arguments:#(object selector arguments link);
		control: #instead.

	(objectName>>functionHeader) ast link: metaLink. 
	^metaLink 