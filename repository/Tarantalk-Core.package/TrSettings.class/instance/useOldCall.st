accessing
useOldCall
	^self at: #useOldCall ifAbsentPut: [true]