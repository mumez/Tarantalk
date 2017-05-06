authentication
waitAuthCompleted: retryCount interval: milliseconds
	| retCount |
	retCount := retryCount.
	[authCompleted ~= true and: [retCount > 0]] whileTrue: [ 
		retCount := retCount - 1.
		(Delay forMilliseconds: milliseconds) wait.
	].
	^authCompleted
