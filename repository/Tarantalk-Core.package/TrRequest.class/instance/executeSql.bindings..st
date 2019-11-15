actions-sql
executeSql: statement bindings: bindingsArray
	self type: TrValueConstants execute.
	self bodyMap at: TrKeyConstants sqlText put: statement.
	bindingsArray ifNotNil: [ 
		self bodyMap at: TrKeyConstants sqlBind put: bindingsArray.
	]
	
	