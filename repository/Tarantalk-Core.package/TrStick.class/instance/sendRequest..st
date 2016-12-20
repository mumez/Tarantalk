sending
sendRequest: aRequest
	| stream bytes |
	self requestsMap at: aRequest syncId put: aRequest.
	stream := WriteStream on: ByteArray new.
	self requestWriter writeRequest: aRequest on: stream.
	bytes := stream contents.
	self send: bytes.
	^aRequest