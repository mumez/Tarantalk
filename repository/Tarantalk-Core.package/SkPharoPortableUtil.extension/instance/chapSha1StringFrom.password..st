*Tarantalk-Core-actions
chapSha1StringFrom: salt password: password
	| saltDecoded step1 step2 step3 |
	saltDecoded := salt asString base64Decoded copyFrom: 1 to: 20.
	step1 := SHA1 new hashMessage: password.
	step2 := SHA1 new hashMessage: step1.
	step3 := SHA1 new hashMessage: (saltDecoded, step2).
	
	^ (step1 bitXor: step3) asString