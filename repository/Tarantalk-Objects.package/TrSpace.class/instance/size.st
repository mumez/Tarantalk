accessing
size
	| ret |
	ret := (self evalWithReturn: (self fullMethodName: 'len()')) value.
	^ret first