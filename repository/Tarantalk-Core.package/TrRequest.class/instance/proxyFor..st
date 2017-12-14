controlling
proxyFor: waitTimeoutSeconds
	| syncValue |
	syncValue := self createSyncValueFor: waitTimeoutSeconds.
	^self proxyValueClass on: syncValue 