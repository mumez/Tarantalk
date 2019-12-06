executing-sql
executeSql: statement values: bindingValues
	^(self asyncExecuteSql: statement values: bindingValues) proxy