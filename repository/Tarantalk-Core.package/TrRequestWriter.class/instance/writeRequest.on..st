writing
writeRequest: aRequest on: aStream
	| internalStream packetBytes |
	internalStream := WriteStream on: (ByteArray new).
	self encoder write: aRequest headerMap on: internalStream.
	self encoder write: aRequest bodyMap on: internalStream.
	packetBytes := internalStream contents.
	(self encoder writeStream: aStream) writeUint32: packetBytes size.
	aStream nextPutAll: packetBytes.
	