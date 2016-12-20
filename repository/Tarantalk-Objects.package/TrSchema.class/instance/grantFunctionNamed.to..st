actions-function
grantFunctionNamed: funcName to: userName 
	^self evalWithReturn: (self userFunctionName: 'grant(...)') arguments: {userName. 'execute'. 'function'. funcName}