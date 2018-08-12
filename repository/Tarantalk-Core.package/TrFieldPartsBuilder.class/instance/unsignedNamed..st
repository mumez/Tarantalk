adding
unsignedNamed: fieldName
	^self parts add: (TrFieldPart name: fieldName type: 'unsigned')