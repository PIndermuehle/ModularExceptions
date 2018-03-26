Parents
getAllFathers
	|out|
		
	self father isNil ifTrue:[
		^nil
		]
	ifFalse:	[ 
		
			out := {self father}.
		
		self father father notNil ifTrue: [ 
		out := out, self father getAllFathers.
		 
			]
		
		ifFalse: [
			
			].
	
	^out.
		 ]
	
	