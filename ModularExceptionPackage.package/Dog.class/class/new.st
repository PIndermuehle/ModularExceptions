instance creation
new
	|d| 
	d := super new.
	d bark: 'Woof'.
	d dogName: 'Rex'.
	^d.