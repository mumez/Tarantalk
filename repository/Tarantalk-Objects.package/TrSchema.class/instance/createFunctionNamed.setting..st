actions-function
createFunctionNamed: funcName setting: creationSettingsBlock
	| optionsBuilder |
	optionsBuilder := TrOptionsBuilder new.
	creationSettingsBlock value: optionsBuilder.
	^self evalWithReturn: (self funcFunctionName: 'create(...)') arguments: {funcName. optionsBuilder options }