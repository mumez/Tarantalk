actions-updating
replaceAt: spaceId values: tuple
	| request |
	request := self newRequest replaceAt: spaceId values: tuple.
	^self sendRequest: request