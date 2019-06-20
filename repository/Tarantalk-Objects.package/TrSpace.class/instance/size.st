accessing
size
	^self isVinyl ifTrue: [ self countAll ] ifFalse: [ self len ]