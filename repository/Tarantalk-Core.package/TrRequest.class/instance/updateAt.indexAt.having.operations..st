actions-updating
updateAt: spaceId indexAt: indexId  having: keys operations: operations
	self type: TrValueConstants update.
	self bodyMap at: TrKeyConstants spaceId put: spaceId.
	self bodyMap at: TrKeyConstants indexId put: indexId.
	self bodyMap at: TrKeyConstants key put: (self ensureArray: keys).
	self bodyMap at: TrKeyConstants tuple put: operations.
	
	