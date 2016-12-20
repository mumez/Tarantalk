accessing
min
	| ret |
	ret := (self evalWithReturn: (self fullMethodName: 'min()')) value.
	^ret first