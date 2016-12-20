actions-function
dropFunctionNamed: funcName 
	^self evalWithReturn: (self funcFunctionName: 'drop(...)') arguments: {funcName}