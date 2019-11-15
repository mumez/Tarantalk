printing
printOn: aStream
	aStream nextPutAll: self class name.
	aStream nextPutAll: ' ('.
	aStream nextPutAll: 'columnCount: ', self columnCount printString; space. 
	aStream nextPutAll: 'columns: '.
	self columns do: [:each | each printOn: aStream ] separatedBy: [ aStream space ].
	aStream nextPutAll: ')'. 