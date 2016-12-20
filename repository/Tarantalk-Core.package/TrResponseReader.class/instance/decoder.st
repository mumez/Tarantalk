accessing
decoder
	^ decoder ifNil: [ decoder := MpDecoder new]