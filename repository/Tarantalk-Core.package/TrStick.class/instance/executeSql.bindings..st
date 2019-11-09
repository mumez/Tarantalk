actions-sql
executeSql: statement bindings: bindingsArray
	| request |
	request := self newRequest executeSql: statement bindings: bindingsArray.
	^self sendRequest: request