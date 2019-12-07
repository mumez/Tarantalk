testing
testSqlInsertAndSelect
	| talk val resp columns |
	talk := self tarantalk.
	self should: [ talk executeSql: 'drop table trt_table_InsertAndSelect'] raise: TrError.
	
	val := talk executeSql: 'create table trt_table_InsertAndSelect (column1 integer primary key, column2 varchar(100))'.
	self assert: val sqlChangedRowCount equals: 1.
	
	97 to: 122 do: [ :idx | 
	val := talk executeSql: 'insert into trt_table_InsertAndSelect values (?, ?)' values: {idx. idx asCharacter asString}.
	self assert: val sqlChangedRowCount equals: 1.
	].

	resp := talk executeSql: 'select * from trt_table_InsertAndSelect'.
	columns := resp metadata columns.
	self assert: columns first lowerName equals: 'column1'.
	self assert: columns first type equals: 'integer'.
	self assert: columns second lowerName equals: 'column2'.
	self assert: columns second type equals: 'string'.
	
	self assert: resp first equals: #(97 'a').
	self assert: resp last equals: #(122 'z').
	
	resp := talk executeSql: 'select * from trt_table1 where column1 = ?' values: { 100 }.
	self assert: resp size equals: 1.
	self assert: resp first equals: #(100 'd').
	
	val := talk executeSql: 'drop table trt_table_InsertAndSelect'.
	self assert: val sqlChangedRowCount equals: 1.