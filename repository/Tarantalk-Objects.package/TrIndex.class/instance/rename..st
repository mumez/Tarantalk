altering
rename: newIndexName
	self evalWithReturn: (self fullMethodName: 'rename(...)') arguments: (Array with: (newIndexName)).
	
	name := newIndexName