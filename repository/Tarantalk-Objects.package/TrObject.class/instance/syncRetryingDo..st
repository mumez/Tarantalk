private-retrying
syncRetryingDo: aBlock
	^self syncRetryingDo: aBlock wait: 1 second max: 3