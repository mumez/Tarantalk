instance creation
spliceAt: index from: position size: size value: value
	| inst |
	inst := self operator: ':' at: index value: value.
	inst position: position.
	inst size: size.
	^inst