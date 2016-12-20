altering
rename: newIndexName
	self eval: (self fullMethodName: 'rename(...)') arguments: (Array with: (newIndexName)).
	
	name := newIndexName