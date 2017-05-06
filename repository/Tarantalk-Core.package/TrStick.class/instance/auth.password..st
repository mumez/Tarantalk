authentication
auth: userNameString password: passwordString
	| currentSalt request  |
	currentSalt := self salt ifNil: [ ^self connect].
	userName := userNameString.
	request := self newRequest auth: userNameString password: passwordString salted: currentSalt.
	^(self sendRequest: request)
		ifDone: [ authCompleted := true ] 