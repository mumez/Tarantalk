initialize-release
release
	super release.
	salt := requestWriter := responseReader := nil.
	self initRequestsMap.
	self initReceiveHandlers.
	