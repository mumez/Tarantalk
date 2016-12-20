actions-updating
updateAt: spaceId indexAt: indexId  having: keys performing: operationsBuildingBlock
	| request |
	request := self newRequest updateAt: spaceId indexAt: indexId  having: keys performing: operationsBuildingBlock.
	^self sendRequest: request