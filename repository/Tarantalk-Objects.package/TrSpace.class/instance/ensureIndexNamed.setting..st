accessing-index
ensureIndexNamed: indexName setting: creationSettingsBlock
	^ (self
		asyncCreateIndexNamed: indexName
		setting: [ :opts | 
			opts ifDuplicateUse: true.
			creationSettingsBlock cull: opts ])
		valueThen: [ :ret | self indexFromDictionary: ret first ]