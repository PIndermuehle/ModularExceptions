MetaLinks
addMetaLinkFixTriggerForFunction: functionHeader ofClass: objectName
	"Attaches a metalink trigger for the receiver #fixIntegrity method to another method."
	|metaLink|
	
	metaLink := MetaLink new
		metaObject: [:object :selector :args|
			[object fixIntegrity] on: MessageNotUnderstood do: [ 
				self inform: object className, 'did not implement method ''fixIntegrity'''].
			];
		selector: #value:value:value:;
		arguments:#(object selector arguments);
		control: #after.
		

	(objectName>>functionHeader) ast link: metaLink. 
	^metaLink