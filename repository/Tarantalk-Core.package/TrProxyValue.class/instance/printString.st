printing
printString
	^String streamContents: [ :str | self printOn: str ]