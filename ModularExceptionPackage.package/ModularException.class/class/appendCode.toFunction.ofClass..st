CodeManipulation
appendCode: aCode toFunction: aFunction ofClass: aClass

"Appends a line of code to the end of a method definition and recompiles the method"

|aText|


aText := (aClass>>aFunction ) definition.

aText := aText, '.
	'.
	
aText := aText, aCode.

aText := aText, '.'.

aClass compile: aText.

