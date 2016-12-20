actions
deleteAt: spaceId indexAt: indexId  having: keys
	self type: TrValueConstants delete.
	self bodyMap at: TrKeyConstants spaceId put: spaceId.
	self bodyMap at: TrKeyConstants indexId put: indexId.
	self bodyMap at: TrKeyConstants key put: (self ensureArray: keys).
	
	