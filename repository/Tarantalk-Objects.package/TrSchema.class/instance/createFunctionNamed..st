actions-function
createFunctionNamed: funcName 
	^self createFunctionNamed: funcName setting: [:opts | opts ifDuplicateUse: false]