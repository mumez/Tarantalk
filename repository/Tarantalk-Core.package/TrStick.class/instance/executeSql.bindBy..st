actions-sql
executeSql: statement bindBy: aDictionaryOrArray
	^self executeSql: statement bindUsing: [:args | args withAll: aDictionaryOrArray]