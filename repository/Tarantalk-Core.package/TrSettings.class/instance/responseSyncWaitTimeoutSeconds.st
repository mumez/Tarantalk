accessing
responseSyncWaitTimeoutSeconds
	^self at: #responseSyncWaitTimeoutSeconds ifAbsentPut: [5]