instance creation
classForCode: errorCode
	errorCode == 42 "'ACCESS_DENIED'" ifTrue: [^ TrAccessDeniedError].
	^ self