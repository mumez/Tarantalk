accessing session
sessionId
	^ (self evalWithReturn: 'box.session.id()')
		valueThen: [ :ret | ret first ]
		ifFailed: [ -1 ]