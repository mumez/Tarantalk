instance creation
reason: reason stick: aStick
	| inst |
	inst := self code: (self codeSymbolArray indexOf: #TIMEOUT)-1 reason: reason.
	inst stick: aStick.
	^inst 
	