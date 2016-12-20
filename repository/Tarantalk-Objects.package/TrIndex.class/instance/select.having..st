selecting
select: iteratorSymbol having: keys
	^(self asyncSelect: iteratorSymbol having: keys) value