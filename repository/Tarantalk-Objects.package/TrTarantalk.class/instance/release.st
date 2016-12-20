initialize-release
release
	self stick ifNotNil: [:s | s release].
	self unregister