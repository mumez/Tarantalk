inserting
add: tupleArrayWithoutPrimaryKey
	^self evalWithReturn: (self fullMethodName: 'auto_increment(...)')
			 arguments: (Array with: (self ensureArray: tupleArrayWithoutPrimaryKey))