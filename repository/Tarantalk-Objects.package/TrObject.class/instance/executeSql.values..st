executing-sql
executeSql: statement values: bindingValues
	| ret |
	ret := (self asyncExecuteSql: statement values: bindingValues) proxy.
	ret isError ifTrue: [ ret signal ].
	^ret