actions-function
existsFunctionNamed: funcName 
	^(self evalWithReturn: (self funcFunctionName: 'exists(...)') arguments: {funcName}) valueThen:  [ :ret | ret ifEmpty: [ false ] ifNotEmpty: [ ret first ] ]