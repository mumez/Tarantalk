accessing
parseUrl: urlString
	| params |
	params := self portableUtil parseUrl: urlString.
	params at: #username ifPresent: [ :uname |
		self onGreetingEnded: [ self auth: uname password: (params at: #password ifAbsent:[])]
	].
	params at: #password ifPresent: [ :pw |
		self passwordProvider: [ pw ]
	].