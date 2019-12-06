executing-sql
executeSql: statement
	^(self asyncExecuteSql: statement) proxy