selecting
asyncSelect: iteratorSymbol having: keys
	^ self asyncSelect: iteratorSymbol having: keys offset: 0 limit: self stick selectLimit