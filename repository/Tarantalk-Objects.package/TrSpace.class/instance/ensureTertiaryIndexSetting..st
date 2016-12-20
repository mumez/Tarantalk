accessing-index
ensureTertiaryIndexSetting: creationSettingsBlock
	^ self
		ensureIndexNamed: 'tertiary'
		setting: [ :opts | 
			opts fieldOffset: 2.
			creationSettingsBlock cull: opts ]