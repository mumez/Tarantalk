printing
printOn: aStream
	self isEnded ifFalse: [ ^super printOn: aStream ].
	aStream nextPutAll: 'TrSyncValue value: '.
	self value printOn: aStream.
	self metadata ifNotNil: [ :v |
		aStream space; nextPutAll: 'metadata: '.
		v printOn: aStream.
	].
	self sqlInfo ifNotNil: [ :v |
		aStream space; nextPutAll: 'sqlInfo: '.
		v printOn: aStream.
	]