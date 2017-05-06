initialize-release
initialize
	super initialize.
	self initRequestsMap.
	self initReceiveHandlers.
	self initAuthCompleted