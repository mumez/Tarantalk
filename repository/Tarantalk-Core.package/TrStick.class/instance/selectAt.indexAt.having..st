actions-query
selectAt: spaceId indexAt: indexId  having: keys
	^self selectAt: spaceId indexAt: indexId  having: keys offset: 0  limit: self selectLimit iterator: TrIteratorConstants equal