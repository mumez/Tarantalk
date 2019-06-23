private-retrying
syncRetryingDo: aBlock wait: duration max: maxRetryCount
	| retryCount |
	retryCount  := maxRetryCount.
	[ ^ aBlock value ]
		on: TrWaitTimeoutError, TrAccessDeniedError
		do: [ :ex | 
			retryCount := retryCount - 1.
			duration wait.
			retryCount = 0
				ifTrue: [ ex pass ]
				ifFalse: [ ex retry ] ]