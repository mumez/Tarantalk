selecting
select: iteratorSymbol having: keys offset: offset  limit: limit
	^(self asyncSelect: iteratorSymbol having: keys offset: offset  limit: limit) value