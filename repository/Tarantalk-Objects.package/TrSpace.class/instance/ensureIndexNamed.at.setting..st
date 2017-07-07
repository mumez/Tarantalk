accessing-index
ensureIndexNamed: indeName at: nth setting: creationSettingsBlock
	^ self
		ensureIndexNamed: indeName
		setting: [ :opts | 
			opts fieldOffset: nth - 1.
			creationSettingsBlock cull: opts ]