testing
testAsyncExecuteSqlNested
	| talk future |
	talk := self tarantalk.
	future := (talk asyncExecuteSql: 'drop table if exists trt_table_AsyncExecuteSqlNested') future.

	future andThen: [ :val1 |
	future := (talk asyncExecuteSql: 'create table trt_table_AsyncExecuteSqlNested (column1 integer primary key, column2 varchar(100))') future.
		future andThen: [ :val2 | | futures |
			futures := OrderedCollection new.
			97 to: 98 do: [ :idx | 
				future := (talk asyncExecuteSql: 'insert into trt_table_AsyncExecuteSqlNested values (?, ?)' values: {idx. idx asCharacter asString}) future.
				futures add: future.
			].
			(futures first zip: futures last) andThen: [ :val3 |
				future := (talk asyncExecuteSql: 'select * from trt_table_AsyncExecuteSqlNested where column1 = :id' mapped: { 'id'->98 }) future.
				future andThen: [ :val4 |
					self assert: val4 size equals: 1.
					self assert: val4 first equals: #(98 'b').
					self assert: val4 metadata columnNames equals: #('column1' 'column2').
					self assert: val4 metadata columnTypes equals: #('integer' 'string').
					future := (talk asyncExecuteSql: 'drop table trt_table_AsyncExecuteSqlNested') future.
					future andThen: [ :val5 |
						self assert: val5 changedRowCount equals: 1
					]
				]
			].
		].
	]