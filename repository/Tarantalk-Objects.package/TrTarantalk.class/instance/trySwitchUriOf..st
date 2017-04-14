actions-fallback
trySwitchUriOf: aTrStick
	self settings switchingTargetUrls ifEmpty: [ ^ self ].
	reconnectCount > (self settings maxReconnects * 2)
		ifTrue: [ reconnectCount := 0.
			^ aTrStick targetUrl: self settings switchingTargetUrls first ].
	aTrStick targetUrl: self settings switchingTargetUrls last