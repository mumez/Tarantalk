actions-query
getAt: spaceId indexAt: indexId  having: keys
	^self selectAt: spaceId indexAt: indexId  having: keys offset: 0  limit: 1 iterator: TrIteratorConstants equal