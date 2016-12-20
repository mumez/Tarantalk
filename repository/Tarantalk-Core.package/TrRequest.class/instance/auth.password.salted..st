actions
auth: userName password: password salted: salt
	| tuple |
	self type: TrValueConstants auth.
	
	tuple := Array with: 'chap-sha1' with: (self portableUtil chapSha1StringFrom: salt password: password).
	self bodyMap at: TrKeyConstants userName  put: userName.
	self bodyMap at: TrKeyConstants tuple  put: tuple.
	