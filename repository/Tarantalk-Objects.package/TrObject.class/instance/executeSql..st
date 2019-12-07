executing-sql
executeSql: statement
	| ret |
	ret := (self asyncExecuteSql: statement) proxy.
	ret isError ifTrue: [ ret signal ].
	^ret