controlling
value
	^ returnedValue ifNil: [ returnedValue := self valueFor: self settings responseSyncWaitTimeoutSeconds ]