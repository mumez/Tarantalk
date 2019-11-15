printing
printOn: aStream
	aStream nextPutAll: self class name.
	aStream nextPutAll: ' ('.
	aStream nextPutAll: ('changedRowCount: ', self changedRowCount printString).
	self autoIncrementValue ifNotNil: [:val | aStream space; nextPutAll: ('autoIncrementValue: ', val printString)].
	aStream nextPutAll: ')'. 