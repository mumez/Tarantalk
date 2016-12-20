accessing
named: aString ifAbsentPut: aBlock
	^self talksDict at: aString ifAbsentPut: aBlock