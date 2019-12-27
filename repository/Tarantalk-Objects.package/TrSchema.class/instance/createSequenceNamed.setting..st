actions-sequence
createSequenceNamed: sequenceName setting: creationSettingsBlock
	| optionsBuilder |
	optionsBuilder := TrSequenceOptionsBuilder new.
	creationSettingsBlock value: optionsBuilder.
	^self evalWithReturn: (self sequenceFunctionName: 'create(...)') arguments: {sequenceName. optionsBuilder options }