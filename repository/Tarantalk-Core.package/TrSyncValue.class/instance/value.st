actions
value
	self isEnded ifTrue: [ ^value ].
	
	Processor yield.
	
	self semaphore waitTimeoutSeconds: self waitTimeoutSeconds.
	self isEnded ifFalse: [ self setTimeoutError ].
	
	^value