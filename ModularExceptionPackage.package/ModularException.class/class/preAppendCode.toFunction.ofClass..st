CodeManipulation
preAppendCode: aCode toFunction: aFunction ofClass: aClass
	| oldCode header body newCode insertCode|
	oldCode := (aClass >> aFunction) definition.
	oldCode := oldCode findTokens: Character cr.
	header := oldCode first.
	oldCode := oldCode reject: [ :each | each asSymbol == oldCode first asSymbol ].
	body := ''.
	oldCode do: [ :each | body := body , each, '
' ].
	
	insertCode := '	',aCode, '.'.
	
	newCode := header,'
', insertCode, '
', body.
			
	aClass compile: newCode.
	