actions-updating
upsertAt: spaceId values: keys operations: operations
	self type: TrValueConstants upsert.
	self bodyMap at: TrKeyConstants spaceId put: spaceId.
	self bodyMap at: TrKeyConstants tuple put: (self ensureArray: keys).
	self bodyMap at: TrKeyConstants ops put: operations.
	
	