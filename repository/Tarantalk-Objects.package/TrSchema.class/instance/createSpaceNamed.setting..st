actions-space
createSpaceNamed: spaceName setting: creationSettingsBlock
	| optionsBuilder |
	optionsBuilder := TrOptionsBuilder forCreateSpace.
	creationSettingsBlock value: optionsBuilder.
	^self evalWithReturn: (self spaceFunctionName: 'create(...)') at: 'id' arguments: {spaceName. optionsBuilder options }