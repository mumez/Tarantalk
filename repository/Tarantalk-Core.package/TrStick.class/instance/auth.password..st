authentication
auth: userNameString password: passwordString
	| currentSalt request |
	currentSalt := self salt ifNil: [ ^ self connect ].
	requestedUserName := userNameString.
	request := self newRequest
		auth: userNameString
		password: passwordString
		salted: currentSalt.
	^ (self sendRequest: request)
		ifDone: [ authCompleted := true.
			self retrieveUserName ifDone: [ :data :req | userName := data at: 1 ] ]