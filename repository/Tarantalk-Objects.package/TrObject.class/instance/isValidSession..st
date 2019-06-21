accessing session
isValidSession: sessionId
	^ (self evalWithReturn: 'box.session.exists(...)' arguments: {sessionId})
		valueThen: [ :ret | ret first ]
		ifFailed: [ -1 ]