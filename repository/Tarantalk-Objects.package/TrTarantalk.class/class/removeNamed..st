accessing
removeNamed: aString
	^self talksDict removeKey: aString ifAbsent: [  ]