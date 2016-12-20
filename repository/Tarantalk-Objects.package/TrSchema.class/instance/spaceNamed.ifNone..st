actions-space
spaceNamed: spaceName ifNone: aBlock
	[ (self evalWithReturn: (self spaceName: spaceName) at: 'id' arguments: {})
		valueThen: [ :id | ^ self spaceAt: id ] ]
		on: Error
		do: [ :ex | 
			ex isTarantoolError ifTrue: [ ^ aBlock cull: self ].
			ex pass ]