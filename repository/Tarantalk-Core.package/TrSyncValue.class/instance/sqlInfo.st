accessing-sql
sqlInfo
	self isEnded ifFalse: [self value].
	^self response sqlInfo