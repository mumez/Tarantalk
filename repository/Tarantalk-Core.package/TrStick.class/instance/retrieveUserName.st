authentication
retrieveUserName
	^ self eval: 'return box.session.user()'