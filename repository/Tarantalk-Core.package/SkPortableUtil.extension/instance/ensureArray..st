*Tarantalk-Core-actions
ensureArray: anObject
	| arr |
	arr := (anObject isCollection and: [ anObject isString not ])
		ifTrue: [ anObject asArray ]
		ifFalse: [ Array with: anObject ].
	^ arr