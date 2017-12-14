reading
readResponseFrom: aStream
	| sizeBytes sizeRead decoder headerMap bodyMap |
	sizeBytes := #[0 0 0 0 0].
	sizeRead := aStream readInto: sizeBytes startingAt: 1 count: 5.
	sizeRead < 5 ifTrue: [^nil].
	
	decoder := self createDecoder.
	decoder decode: sizeBytes.
	
	decoder readStream: aStream.
	headerMap := decoder read.
	bodyMap := decoder read.
	
	^self responseClass headerMap: headerMap bodyMap: bodyMap