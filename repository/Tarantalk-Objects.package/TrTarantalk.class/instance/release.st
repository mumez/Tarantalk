initialize-release
release
	self stick ifNotNil: [:s | s destroy].
	self unregister