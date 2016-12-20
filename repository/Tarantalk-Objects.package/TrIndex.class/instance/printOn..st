printing
printOn: aStream
	aStream nextPutAll: self class name.
	aStream nextPutAll: '('.
	self isUnique ifTrue: [ aStream nextPutAll: 'UNIQ' ].
	aStream nextPutAll: ' type: ', self type asString.
	aStream nextPutAll: ' id: ', self id asString.
	aStream nextPutAll: ' name: ', self name asString.
	aStream nextPutAll: ' spaceId: ', self spaceId asString.
	aStream nextPutAll: ')'.
	