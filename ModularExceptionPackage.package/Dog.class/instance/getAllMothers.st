Parents
getAllMothers
	|out|
		
	self mother isNil ifTrue:[
		^nil
		]
	ifFalse:	[ 
		
			out := {self mother}.
		
		self mother mother notNil ifTrue: [ 
		out := out, self mother getAllMothers.
		 
			]
		
		ifFalse: [
			
			].
	
	^out.
		 ]
	
	