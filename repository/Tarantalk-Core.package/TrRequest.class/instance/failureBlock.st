accessing
failureBlock
	^failureBlock ifNil: [ failureBlock := self defaultFailureBlock ]