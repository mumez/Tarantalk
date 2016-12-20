actions-function
revokeFunctionNamed: funcName from: userName 
	^self evalWithReturn: (self userFunctionName: 'revoke(...)') arguments: {userName. 'execute'. 'function'. funcName}