actions-space
ensureSpaceNamed: spaceName setting: creationSettingsBlock
	^(self createSpaceNamed: spaceName setting: [:opts | opts ifDuplicateUse: true]) 
		valueThen: [ :ret | self spaceAt: ret first ]