adding
integerNamed: fieldName
	^self parts add: (TrFieldPart name: fieldName type: 'integer')