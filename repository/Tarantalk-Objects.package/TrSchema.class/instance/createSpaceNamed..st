actions-space
createSpaceNamed: spaceName 
	^self createSpaceNamed: spaceName setting: [:opts | opts ifDuplicateUse: false]