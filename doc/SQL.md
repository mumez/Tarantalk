Using SQL
========

Since version 2x, [Tarantool](https://tarantool.org/ "Tarantool") provides [SQL interface](https://www.tarantool.io/en/doc/2.2/tutorials/sql_tutorial/).

Tarantalk supports executing SQL synchronously / asynchronously utilizing this feature.


## Installation ##

Make sure you have installed tarantool 2.x series.
(1.10 does not have SQL interface.)

```bash
$ tarantool -v
```
->
```bash
Tarantool 2.1.2-111-ga3f3cc627
```
For details, please see Tarantool [download section](https://www.tarantool.io/en/download/).

## Basic API ##

You can use `TrObject >> #executeSql:` series for synchronous SQL execution.

## Create Table

Let's create a student table.

```smalltalk
tarantalk := TrTarantalk connect: 'taran:talk@localhost:3301'.
tarantalk executeSql: 'create table students (studentNumber integer primary key, name text)'.
```

## Insert values

Now insering some students.

```smalltalk
1 to: 5 do: [ :idx | 
	tarantalk executeSql: 'insert into students values (?, ?)' values: {idx. ('student-', idx asString)}.
].
```

Please note that postgres-style parameter placeholder ('?') is supported with `#executeSql:values:`.

Named parameters can also be used by `#executeSql:mapped:`.

```smalltalk
tarantalk executeSql: 'insert into students values (:id, :name)' mapped: { 'id'->6. 'name'->'Masashi Umezawa' }
```

### Getting changed row count

On non-select queries, you can get a changed row count as a return value.

```smalltalk
sqlInfo := tarantalk executeSql: 'insert into students values (?, ?)' values: {7. 'Taran Talk'}.
sqlInfo changedRowCount. "=> 1"
```

## Select rows


Now, let's select all the rows.

```smalltalk
result := tarantalk executeSql: 'select * from students'.
result do: [ :each | Transcript cr; show: each ].
```
In your Transcript, you can see:

```smalltalk

#(1 'student-1')
#(2 'student-2')
#(3 'student-3')
#(4 'student-4')
#(5 'student-5')
#(6 'Masashi Umezawa')
#(7 'Taran Talk')
```

### Getting column metadata

On select queries, the result contains metadata as well as the actual data.

```smalltalk
metadata := result metadata.
metadata columns do: [ :each | Transcript cr; show: each ].
```
Now you can see in Transcript:

```smalltalk
TrColumnMetadata ( name: 'STUDENTNUMBER' type: 'integer')
TrColumnMetadata ( name: 'NAME' type: 'string')
```

## Async API ##

There are also `TrObject >> #asyncExecuteSql:` series.
The query result can be retrieved asynchronously or you can just ignore.

```smalltalk
futureResult := tarantalk asyncExecuteSql: 'select * from students where studentNumber = ?' values: {7}.
futureResult ifDone: [:result | Transcript cr; show: result] ifFailed: [:error | error signal].
Transcript clear.
```

When you evaluate above expressions, Transcript will be firstly cleared and result will be displayed a bit later.
```smalltalk

#(#(7 'Taran Talk'))
```
