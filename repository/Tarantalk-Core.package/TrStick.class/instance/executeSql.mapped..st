actions-sql
executeSql: statement mapped: namedParameterBindings
	^self executeSql: statement bindUsing: [:args | args withMap: namedParameterBindings]