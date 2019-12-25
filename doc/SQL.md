Using SQL
========

Since version 2x, [Tarantool](https://tarantool.org/ "Tarantool") provides [SQL interface](https://www.tarantool.io/en/doc/2.2/tutorials/sql_tutorial/).

Tarantalk supports executing SQL synchronously / asynchronously.


## Installation ##

Make sure you have installed tarantool 2.x series.

```bash
$ tarantool -v
```
->
```bash
Tarantool 2.1.2-111-ga3f3cc627
```

For details, please see Tarantool [download section](https://www.tarantool.io/en/download/)

## Sync API example ##

Let's create student table and insert values.

```smalltalk
tarantalk := TrTarantalk connect: 'taran:talk@localhost:3301'.
tarantalk executeSql: 'create table students (studentNumber integer primary key, name text)'.

1 to: 5 do: [ :idx | 
	tarantalk executeSql: 'insert into students values (?, ?)' values: {idx. ('student-', idx asString)}.
].
```
You can use `#executeSql:` series for synchronous SQL execution.
Note that postgres style argument placeholder ('?') is supported with `#executeSql:values:`.

On non-select queries, you can get a changed row count as a return value.

```smalltalk
sqlInfo := tarantalk executeSql: 'insert into students values (?, ?)' values: {6. 'Masashi Umezawa'}.
sqlInfo changedRowCount. "=> 1"
```
Now, let's select:

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
```
On select queries, result contains metadata as well as the actual data.

```smalltalk
metadata := result metadata.
metadata columns do: [ :each | Transcript cr; show: each ].
```
Now you can see:

```smalltalk
TrColumnMetadata ( name: 'STUDENTNUMBER' type: 'integer')
TrColumnMetadata ( name: 'NAME' type: 'string')
```

