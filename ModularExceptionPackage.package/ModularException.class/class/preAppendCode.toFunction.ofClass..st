CodeManipulation
preAppendCode: aCode toFunction: aFunction ofClass: aClass

	"Allows inserting code between the function header and the first line of the code"
	"It also recompiles the method right after"
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
	