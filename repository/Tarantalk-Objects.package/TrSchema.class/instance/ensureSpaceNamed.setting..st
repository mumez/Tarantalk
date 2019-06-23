actions-space
ensureSpaceNamed: spaceName setting: creationSettingsBlock
	^ self
		syncRetryingDo: [ (self
				createSpaceNamed: spaceName
				setting: [ :opts | 
					opts ifDuplicateUse: true.
					creationSettingsBlock cull: opts ])
				valueThen: [ :ret | self spaceAt: ret first ]
				ifFailed: [ :ex | ex pass ] ]