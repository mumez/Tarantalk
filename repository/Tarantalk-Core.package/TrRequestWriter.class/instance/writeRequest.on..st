writing
writeRequest: aRequest on: aStream
	| internalStream encoder packetBytes |
	internalStream := WriteStream on: (ByteArray new).
	encoder := self createEncoder.
	encoder write: aRequest headerMap on: internalStream.
	encoder write: aRequest bodyMap on: internalStream.
	packetBytes := internalStream contents.
	(encoder writeStream: aStream) writeUint32: packetBytes size.
	aStream nextPutAll: packetBytes.