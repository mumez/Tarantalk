actions-spaces
ensureTempSpaceNamed: spaceName
	^self ensureSpaceNamed: spaceName setting: [:opts | opts temporary]