actions
set: previousValue
	^ self
		evalWithReturn: (self fullMethodName: 'set(...)')
		arguments: (Array with: previousValue)