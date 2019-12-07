testing
testSqlCreateAndDrop
	| talk val |
	talk := self tarantalk.
	self should: [ talk executeSql: 'drop table trt_table_CreateAndDrop'] raise: TrError.
	
	val := talk executeSql: 'create table trt_table_CreateAndDrop (column1 integer primary key, column2 varchar(100))'.
	self assert: val changedRowCount equals: 1.
	
	val := talk executeSql: 'drop table trt_table_CreateAndDrop'.
	self assert: val changedRowCount equals: 1.