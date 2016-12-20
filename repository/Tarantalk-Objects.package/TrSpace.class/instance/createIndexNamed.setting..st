indexing
createIndexNamed: indexName setting: creationSettingsBlock
	^(self asyncCreateIndexNamed: indexName setting: creationSettingsBlock) valueThen: [:value |
			self indexFromDictionary: value first
	]