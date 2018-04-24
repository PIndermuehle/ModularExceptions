transformations
mixColors: colorArray
	|red green blue|
	red := 0.0.
	green := 0.0.
	blue := 0.0.
	
	colorArray do: [:each | 
		red := red + each red.  
		green := green + each green.  
		blue := blue + each blue.  
       
		]. 
	  
	^self class r:red g:green b: blue.