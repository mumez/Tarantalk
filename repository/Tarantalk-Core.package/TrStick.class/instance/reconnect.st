actions
reconnect
	self isEnded ifTrue: [ ^self ].
	self isReleased ifTrue: [ ^self ].
	(self isConnected or: [ self isConnecting]) ifTrue: [ ^self ].
	status := SkStickStatus connecting.
	self onReconnectingBlock ifNotNil: [ :block | block value: self ].
	self releaseThenConnect