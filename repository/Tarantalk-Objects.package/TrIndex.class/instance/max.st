accessing
max
	| ret |
	ret := (self evalWithReturn: (self fullMethodName: 'max()')) value.
	^ret first