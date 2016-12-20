accessing
requestWriter
	^ requestWriter ifNil: [ requestWriter := TrRequestWriter new ]