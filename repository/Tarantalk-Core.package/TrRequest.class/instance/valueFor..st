controlling
valueFor: waitTimeoutSeconds
	| syncValue |
	syncValue := self createSyncValueFor: waitTimeoutSeconds.
	^syncValue value