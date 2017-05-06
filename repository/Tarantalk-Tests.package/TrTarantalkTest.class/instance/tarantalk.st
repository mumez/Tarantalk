accessing
tarantalk
	| uriString talk |
	uriString := self class uriString.
	uriString ifNil: [ self error: 'Please set tarantool uri for testing' ].
	talk := TrTarantalk connect: uriString.
	talk waitAuthCompleted.
	^talk