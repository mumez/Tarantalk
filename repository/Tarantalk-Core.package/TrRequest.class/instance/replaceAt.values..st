actions-updating
replaceAt: spaceId values: tuple
	self type: TrValueConstants replace.
	self bodyMap at: TrKeyConstants spaceId put: spaceId.
	self bodyMap at: TrKeyConstants tuple put: tuple.
	
	