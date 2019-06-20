accessing session
userName
	^ (self evalWithReturn: 'box.session.user()')
		valueThen: [ :ret | ret first ]
		ifFailed: [ -1 ]