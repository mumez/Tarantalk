accessing session
uid
	^ (self evalWithReturn: 'box.session.uid()')
		valueThen: [ :ret | ret first ]
		ifFailed: [ -1 ]