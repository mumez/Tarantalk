reading
readPacketFrom: aStream
	self hasSalt ifFalse: [ 
		^ self readGreetingFrom: aStream
	].
	^ self responseReader readResponseFrom: aStream
	