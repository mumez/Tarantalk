controlling
valueFor: waitTimeoutSeconds
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
		waitTimeoutSeconds: waitTimeoutSeconds
		onCompletion: [ ^ result ]
		onTimeout: [TrError signal: 'timeout:', result asString ]