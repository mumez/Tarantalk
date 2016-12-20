actions-space
createTempSpaceNamed: spaceName 
	^self createSpaceNamed: spaceName setting: [:opts | opts temporary ]