accessing-index
ensureSecondaryIndexSetting: creationSettingsBlock
	^ self
		ensureIndexNamed: 'secondary'
		setting: [ :opts | 
			opts fieldOffset: 1.
			creationSettingsBlock cull: opts ]