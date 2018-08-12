actions-space
ensureSpaceNamed: spaceName setting: creationSettingsBlock
	| retryCount |
	retryCount := 2.
	[ ^ (self
		createSpaceNamed: spaceName
		setting: [ :opts | 
			opts ifDuplicateUse: true.
			creationSettingsBlock cull: opts ]) valueThen: [ :ret | self spaceAt: ret first ] ]
		on: TrWaitTimeoutError
		do: [ :ex | 
			retryCount := retryCount - 1.
			1 seconds wait.
			retryCount = 0
				ifTrue: [ ex pass ]
				ifFalse: [ ex retry ] ]