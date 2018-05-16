MetaLinks
addMetaLinkPreProcessParametersTo: functionHeader ofClass: objectName

	"This metalink clamps all number parameters into 0 to 1 range"

	|metaLink|
	
	metaLink := MetaLink new
		metaObject: [:object :selector :args :link|
			|aMethod postParameter out|
		
		postParameter := args.	
		
			1 to: (args size) do:[: index|
		postParameter at: index put:  (((args at:index) max: 0) min: 1 ).
		].
			
		

			link uninstall.
			aMethod := (object class lookupSelector: selector).
			out := object withArgs: postParameter executeMethod: aMethod.
			(object class>>selector) ast link: link.

			out
			];
		selector: #value:value:value:value:;
		arguments:#(object selector arguments link);
		control: #instead.


	(objectName>>functionHeader) ast link: metaLink. 
	^metaLink 