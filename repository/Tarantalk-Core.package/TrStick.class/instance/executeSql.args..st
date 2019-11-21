actions-sql
executeSql: statement args: namedParameterBindings
	^self executeSql: statement bindUsing: [:args | args addAll: namedParameterBindings]