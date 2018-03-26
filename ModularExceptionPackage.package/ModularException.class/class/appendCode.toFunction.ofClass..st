CodeManipulation
appendCode: aCode toFunction: aFunction ofClass: aClass

|aText|


aText := (aClass>>aFunction ) definition.

aText := aText, '.
	'.
	
aText := aText, aCode.

aText := aText, '.'.

aClass compile: aText.

