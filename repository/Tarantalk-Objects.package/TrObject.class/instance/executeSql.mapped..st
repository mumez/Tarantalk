executing-sql
executeSql: statement mapped: namedParameterBindings
	| ret |
	ret := (self asyncExecuteSql: statement mapped: namedParameterBindings) proxy.
	ret isError ifTrue: [ ret signal ].
	^ret