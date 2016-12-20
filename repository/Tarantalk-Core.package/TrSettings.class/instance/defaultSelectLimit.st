accessing
defaultSelectLimit
	^self at: #defaultSelectLimit ifAbsentPut: [10000]