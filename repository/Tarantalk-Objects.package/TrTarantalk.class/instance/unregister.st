initialize-release
unregister
	| key |
	key := self class talksDict keyAtValue: self ifAbsent: [ '' ].
	self class removeNamed: key