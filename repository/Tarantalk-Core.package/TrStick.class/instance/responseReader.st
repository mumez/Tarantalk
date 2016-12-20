accessing
responseReader
	^ responseReader ifNil: [ responseReader := TrResponseReader new ]