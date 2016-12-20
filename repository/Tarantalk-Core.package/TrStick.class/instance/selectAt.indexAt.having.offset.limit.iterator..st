actions-query
selectAt: spaceId indexAt: indexId  having: keys offset: offset  limit: limit iterator: iterator
	| request |
	request := self newRequest selectAt: spaceId indexAt: indexId keys: keys limit: limit offset: offset iterator: iterator.
	^self sendRequest: request