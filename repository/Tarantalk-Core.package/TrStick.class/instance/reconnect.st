actions
reconnect
	self isReleased ifTrue: [ ^self ].
	(self isConnected or: [ self isConnecting]) ifTrue: [ ^self ].
	self releaseThenConnect