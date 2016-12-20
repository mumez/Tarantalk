printing
printOn: aStream
	aStream nextPutAll: self class name.
	aStream nextPutAll: '('.
	self stick printOn: aStream.
	aStream nextPutAll: ')'