accessing-index
ensureIndexNamed: indexName setting: creationSettingsBlock
	^self indexNamed: indexName ifNone: [ 
		(self createIndexNamed: indexName setting: creationSettingsBlock)
	]