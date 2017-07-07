dictionary-like
valuesAt: keys
	| ret |
	ret := self getAt: keys.
	ret isEmptyOrNil ifTrue: [ ^nil ].
	^ret allButFirst 