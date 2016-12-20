indexing
asyncCreateIndexNamed: indexName setting: creationSettingsBlock
	| optionsBuilder |
	optionsBuilder := TrOptionsBuilder forCreateIndex.
	creationSettingsBlock value: optionsBuilder.
	^self evalWithReturn: (self fullMethodName: 'create_index(...)') arguments: {indexName. optionsBuilder options }