controlling
value
	^ returnedValue ifNil: [ returnedValue := self valueFor: self waitTimeoutSeconds ]