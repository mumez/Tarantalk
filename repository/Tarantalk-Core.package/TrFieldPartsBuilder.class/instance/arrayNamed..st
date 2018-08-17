adding
arrayNamed: fieldName
	^self parts add: (TrFieldPart name: fieldName type: 'array')