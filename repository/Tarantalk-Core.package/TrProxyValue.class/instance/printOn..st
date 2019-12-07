printing
printOn: aStream
	aStream nextPutAll: self class name; nextPutAll: ' ('.
	self syncValue printOn: aStream.
	aStream nextPutAll: ')'.