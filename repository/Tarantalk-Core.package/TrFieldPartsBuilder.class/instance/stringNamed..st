adding
stringNamed: fieldName
	^self parts add: (TrFieldPart name: fieldName type: 'string')