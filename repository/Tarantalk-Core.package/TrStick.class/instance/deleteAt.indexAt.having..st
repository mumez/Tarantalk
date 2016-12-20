actions-deleting
deleteAt: spaceId indexAt: indexId  having: keys
	| request |
	request := self newRequest deleteAt: spaceId indexAt: indexId  having: keys.
	^self sendRequest: request