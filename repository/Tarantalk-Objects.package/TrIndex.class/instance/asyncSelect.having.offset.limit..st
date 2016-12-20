selecting
asyncSelect: iteratorSymbol having: keys offset: offset limit: limit
	^ self stick
		selectAt: self spaceId
		indexAt: self id
		having: keys
		offset: offset
		limit: limit
		iterator: (TrIteratorConstants fromSymbol: iteratorSymbol)