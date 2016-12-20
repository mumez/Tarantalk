instance-creation
fromSymbol: aSymbol
	aSymbol isUnary ifTrue: [ ^self perform: aSymbol ].
	aSymbol == #= ifTrue: [ ^self equal ].
	^self perform: aSymbol with: self