HelperMethods
filterNilOutOfArray: anArray
	"Filters all nil objects out of the input array"

	|inArray|
	
	inArray := anArray select: [:each | each notNil  ].
	
	^inArray.