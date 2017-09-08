initialize-release
initialize: tarantoolUri setting: settingBlock
	((stick notNil and: [stick isConnected])
		and: [stick tarantoolUri = tarantoolUri]) ifTrue: [ ^self ].
	
	reconnectCount := 0.
	stick := self stickClass targetUrl: tarantoolUri.
	settingBlock value: self.
	stick onReconnectingBlock: [ :stk | 
		reconnectCount := reconnectCount + 1.
		reconnectCount > self settings maxReconnects 
			ifTrue: [self trySwitchUriOf: stk]
	].
	stick connect