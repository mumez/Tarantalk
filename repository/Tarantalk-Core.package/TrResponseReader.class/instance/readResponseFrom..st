reading
readResponseFrom: aStream
	| sizeBytes sizeRead size decoder mapsBytes headerMap bodyMap |
	sizeBytes := #[0 0 0 0 0].
	sizeRead := aStream readInto: sizeBytes startingAt: 1 count: 5.
	sizeRead < 5 ifTrue: [^nil].
	decoder := self createDecoder.
	size :=  decoder decode: sizeBytes.
	mapsBytes := aStream next: size.
	decoder readStream: mapsBytes readStream.
	headerMap := decoder read.
	bodyMap := decoder read.
	^self responseClass headerMap: headerMap bodyMap: bodyMap