actions-fallback
secondaryUri: secondaryTargetUri
	self settings switchingTargetUrls: {self stick targetUrl. (self stick ensureAsyncSchemaOf: secondaryTargetUri asString)}.
	