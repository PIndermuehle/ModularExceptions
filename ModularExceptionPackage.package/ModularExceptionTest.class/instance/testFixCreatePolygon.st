tests
testFixCreatePolygon
	
	|wrapper pol|
	
wrapper := ParameterProcessWrapper installOn: 
			Polygon class 
			selector: #vertices: 
			processes:{[:arr| ModularException filterNilOutOfArray: arr ]}.

	pol := Polygon vertices: { 0@0. 0@1. nil. 1@1. 1@0 } .

	wrapper uninstall.

	pol containsPoint: 0.5@0.5.