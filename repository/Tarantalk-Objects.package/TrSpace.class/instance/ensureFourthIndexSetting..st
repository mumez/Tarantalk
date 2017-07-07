accessing-index
ensureFourthIndexSetting: creationSettingsBlock
	^ self ensureIndexNamed: 'fourth' at: 4 setting: creationSettingsBlock
	