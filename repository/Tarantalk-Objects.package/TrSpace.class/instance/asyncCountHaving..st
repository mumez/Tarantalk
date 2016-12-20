counting
asyncCountHaving: keys
	^self evalWithReturn: (self fullMethodName: 'count(...)')
			 arguments: (Array with: (self ensureArray: keys))