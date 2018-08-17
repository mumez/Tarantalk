adding
scalarNamed: fieldName
	^self parts add: (TrFieldPart name: fieldName type: 'scalar')