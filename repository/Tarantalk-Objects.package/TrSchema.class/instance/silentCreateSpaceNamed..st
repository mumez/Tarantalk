actions-space
silentCreateSpaceNamed: spaceName 
	^self createSpaceNamed: spaceName setting: [:opts | opts ifDuplicateUse: true]