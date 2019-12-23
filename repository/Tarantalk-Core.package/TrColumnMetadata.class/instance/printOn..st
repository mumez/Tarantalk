printing
printOn: aStream
	aStream nextPutAll: self class name.
	aStream nextPutAll: ' ('.
	self name ifNotNil: [:val | aStream space; nextPutAll: ('name: ', val printString)].
	self type ifNotNil: [:val | aStream space; nextPutAll: ('type: ', val printString)].
	aStream nextPutAll: ')'. 