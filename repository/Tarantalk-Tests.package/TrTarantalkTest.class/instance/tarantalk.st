accessing
tarantalk
	| uriString |
	uriString := self class uriString.
	uriString ifNil: [ self error: 'Please set tarantool uri for testing' ].
	^TrTarantalk connect: uriString.