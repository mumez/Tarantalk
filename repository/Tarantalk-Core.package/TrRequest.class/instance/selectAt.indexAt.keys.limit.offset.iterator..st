actions-query
selectAt: spaceId indexAt: indexId  keys: keys  limit: limit offset: offset iterator: integerOrSymbol
	| iterator |
	self type: TrValueConstants select.
	self bodyMap at: TrKeyConstants spaceId put: spaceId.
	self bodyMap at: TrKeyConstants indexId put: indexId.
	self bodyMap at: TrKeyConstants key put: (self ensureArray: keys).
	self bodyMap at: TrKeyConstants limit put: limit.
	self bodyMap at: TrKeyConstants offset put: offset.
	
	iterator := integerOrSymbol isString ifTrue: [TrIteratorConstants fromSymbol: integerOrSymbol asSymbol] ifFalse:[integerOrSymbol].
	self bodyMap at: TrKeyConstants iterator put: iterator.
	
	