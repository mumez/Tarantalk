actions
insertAt: spaceId values: tuple
	self type: TrValueConstants insert.
	self bodyMap at: TrKeyConstants spaceId put: spaceId.
	self bodyMap at: TrKeyConstants tuple put: tuple.
	
	