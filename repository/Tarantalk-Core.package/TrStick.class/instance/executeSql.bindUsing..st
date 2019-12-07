actions-sql
executeSql: statement bindUsing: bindingsBuilderBlock
	| builder bindings |
	builder := TrSqlBindingsBuilder new.
	bindingsBuilderBlock value: builder.
	bindings := builder bindings asArray.
	^self executeSql: statement bindings: bindings