reading
readResponseFrom: aStream
	| sizeBytes size decoder mapsBytes mapsStream headerMap bodyMap |
	sizeBytes := aStream next: 5.
	sizeBytes size < 5 ifTrue: [^nil].
	decoder := self createDecoder.
	size :=  decoder decode: sizeBytes.	
	mapsBytes := aStream next: size.
	mapsStream := mapsBytes readStream.
	decoder readStream: mapsStream.
	headerMap := decoder read.
	bodyMap := mapsStream atEnd  ifFalse: [decoder read].
	headerMap isDictionary ifFalse: [^nil].
	^self responseClass headerMap: headerMap bodyMap: bodyMap