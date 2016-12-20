reading
readResponseFrom: aStream
	| sizeBytes size mapsBytes mapsStream headerMap bodyMap |
	sizeBytes := aStream next: 5.
	sizeBytes size < 5 ifTrue: [^nil].
	size := self decoder decode: sizeBytes.	
	mapsBytes := aStream next: size.
	mapsStream := mapsBytes readStream.
	self decoder readStream: mapsStream.
	headerMap := self decoder read.
	bodyMap := mapsStream atEnd  ifFalse: [self decoder read].
	headerMap isDictionary ifFalse: [^nil].
	^self responseClass headerMap: headerMap bodyMap: bodyMap