instance creation
request: aTrRequest waitTimeoutSeconds: waitTimeoutSeconds
	^ self basicNew
		request: aTrRequest;
		waitTimeoutSeconds: waitTimeoutSeconds;
		initialize;
		yourself