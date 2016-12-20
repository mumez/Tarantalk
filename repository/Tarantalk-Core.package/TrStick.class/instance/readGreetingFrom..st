reading
readGreetingFrom: aStream
	| greeting |
	greeting := aStream next: 128.
	self salt: (greeting copyFrom: 65 to: 108).
	self onGreetingEndedBlock ifNotNil: [:block | [block cull: self] fork ].
	^nil
	