accessing-index
ensureSecondaryIndexSetting: creationSettingsBlock
	^ self ensureIndexNamed: 'secondary' at: 2 setting: creationSettingsBlock
	