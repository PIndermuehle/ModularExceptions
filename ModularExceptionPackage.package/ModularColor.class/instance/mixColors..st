transformations
mixColors: colorArray
	|redL greenL blueL|
	redL := 0.0.
	greenL := 0.0.
	blueL := 0.0.
	
	colorArray do: [:each | 
		redL := redL + each red.  
		greenL := greenL + each green.  
		blueL := blueL + each blue.  
       
		]. 
	  
	self red: redL; green: greenL; blue: blueL.
	