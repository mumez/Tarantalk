actions
alter: options
	^ self
		evalWithReturn: (self fullMethodName: 'alter(...)')
		arguments: (Array with: options)