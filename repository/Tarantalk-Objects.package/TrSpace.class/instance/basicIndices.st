accessing
basicIndices
	| ret indicesDict |
	ret := (self evalWithReturn: (self fullFunctionName: 'index')) value.
	indicesDict := ret first.
	indicesDict isDictionary ifTrue: [ ^indicesDict ].
	^Dictionary new