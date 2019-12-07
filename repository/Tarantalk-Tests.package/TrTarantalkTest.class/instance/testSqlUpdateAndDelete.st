testing
testSqlUpdateAndDelete
	| talk val resp |
	talk := self tarantalk.
	self should: [ talk executeSql: 'drop table trt_table_UpdateAndDelete'] raise: TrError.
	talk executeSql: 'create table trt_table_UpdateAndDelete (column1 integer primary key, column2 varchar(100))'.
	
	97 to: 122 do: [ :idx | 
	val := talk executeSql: 'insert into trt_table_UpdateAndDelete values (?, ?)' values: {idx. idx asCharacter asString}.
	self assert: val changedRowCount equals: 1.
	].
	
	resp := talk executeSql: 'select * from trt_table_UpdateAndDelete where column1 = :id' mapped: { 'id'->100 }.
	self assert: resp first equals: #(100 'd').
	
	resp := talk executeSql: 'update trt_table_UpdateAndDelete set column2 = :label where column1 = :id' mapped: {'id'-> 100. 'label'->'D'}.
	self assert: val changedRowCount equals: 1.
	
	resp := talk executeSql: 'select * from trt_table_UpdateAndDelete where column1 = :id' mapped: { 'id'->100 }.
	self assert: resp first equals: #(100 'D').
	
	resp := talk executeSql: 'delete from trt_table_UpdateAndDelete where column1 = ?' values: { 100 }.
	self assert: val changedRowCount equals: 1.
	
	resp := talk executeSql: 'select * from trt_table_UpdateAndDelete where column1 = :id' mapped: { 'id'->100 }.
	self assert: resp size equals: 0.
	
	val := talk executeSql: 'drop table trt_table_UpdateAndDelete'.
	self assert: val changedRowCount equals: 1.