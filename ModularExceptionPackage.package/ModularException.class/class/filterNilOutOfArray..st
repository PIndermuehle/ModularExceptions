HelperMethods
filterNilOutOfArray: anArray
	|inArray|
	
	inArray := anArray select: [:each | each notNil  ].
	
	^inArray.