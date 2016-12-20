actions-space
silentCreateSpaceNamed: spaceName setting: creationSettingsBlock
	^ self
		createSpaceNamed: spaceName
		setting: [ :opts | 
			opts ifDuplicateUse: true.
			creationSettingsBlock value: opts ]