actions-space
ensureSpaceNamed: spaceName setting: creationSettingsBlock
	^self spaceNamed: spaceName ifNone: [ 
		(self createSpaceNamed: spaceName setting: creationSettingsBlock) valueThen: [ :val |
			self spaceAt: (self safeElement: val)	
		 ]
	]