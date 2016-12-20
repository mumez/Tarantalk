actions-user
userInfoNamed: userName
	^(self evalWithReturn: (self userFunctionName: 'info(...)') arguments: {userName}) value