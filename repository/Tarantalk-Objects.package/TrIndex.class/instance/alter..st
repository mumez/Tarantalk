altering
alter: optionsBlock
	| optionsBuilder |
	optionsBuilder := TrOptionsBuilder forCreateIndex.
	optionsBlock value: optionsBuilder.
	^self eval: (self fullMethodName: 'alter(...)') arguments: (Array with: (optionsBuilder options))