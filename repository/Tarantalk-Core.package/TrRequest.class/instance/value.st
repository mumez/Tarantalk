controlling
value
	| sema result |
	sema := Semaphore new.
	self
		ifDone: [ :data | 
			result := data.
			sema signal ]
		ifFailed: [ :error | 
			result := error.
			sema signal ].
	sema
		waitTimeoutSeconds: self settings responseSyncWaitTimeoutSeconds
		onCompletion: [ ^ result ]
		onTimeout: [TrError signal: 'timeout:', result asString ]