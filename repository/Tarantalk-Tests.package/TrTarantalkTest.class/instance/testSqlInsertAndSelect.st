testing
testSqlInsertAndSelect
	| talk val |
	talk := self tarantalk.
	self should: [ talk executeSql: 'drop table trt_table_InsertAndSelect'] raise: TrError.
	
	val := talk executeSql: 'create table trt_table_InsertAndSelect (column1 integer primary key, column2 varchar(100))'.
	self assert: val sqlChangedRowCount equals: 1.
	
	val := talk executeSql: 'drop table trt_table_InsertAndSelect'.
	self assert: val sqlChangedRowCount equals: 1.