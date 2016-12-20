initialize-release
initialize: tarantoolUri
	(stick notNil and: [stick isConnected ]) ifTrue: [ ^self ].

	stick := self stickClass targetUrl: tarantoolUri.
	stick connect