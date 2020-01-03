TaskIt integration
========

Tarantalk async API feature can be leveragted much by integrating with [TaskIt](https://github.com/sbragagnolo/taskit).
You can orchestrate async requests with combinable #future sends.

## Installation ##

Please load 'Tarantalk-TaskIt' package for enabling TaskIt integration, that is included in 'extra' package group.

```smalltalk
Metacello new
   baseline: 'Tarantalk';
   repository: 'github://mumez/Tarantalk/repository';
   load: #('extra').
```
[TaskIt](https://github.com/sbragagnolo/taskit) is required and will be installed automatically.

## Using future sends ##

First, let's look back the normal async API.
By default, Tarantalk accepts async requests callback by `#ifDone:ifFailed:`.

```smalltalk
talk := TrTarantalk connect: 'taran:talk@localhost:3301'.
talk executeSql: 'drop table if exists prog_languages'.
talk executeSql: 'create table prog_languages (id integer primary key, name varchar(100), description varchar(100))'.

talk executeSql: 'insert into prog_languages values (?, ?, ?)' values: {1. 'Smalltalk'. 'cool'}.
talk executeSql: 'insert into prog_languages values (?, ?, ?)' values: {2. 'Lua'. 'hot'}.

(talk asyncExecuteSql: 'select * from prog_languages')
	ifDone: [:ret | Transcript cr; show: ret ] ifFailed: [:error | error pass].	
```

However, in `#ifDone:ifFailed:`, you can only register one success callback and one failure callback respectively.

But in `#future` sends, you can register multiple success/failure callbacks.

```smalltalk
future := (talk asyncExecuteSql: 'select * from prog_languages') future.
future
	onSuccessDo: [:ret | Transcript cr; show: ret ];
	onSuccessDo: [:ret | ret metadata inspect ];
	onFailureDo: [:error | error inspect];	
	onFailureDo: [:error | error pass].
```

## Combining future sends ##

TaskIt provides [future combinators](https://github.com/sbragagnolo/taskit#future-combinators), so that you can process complex async results in a fluent way.

`#andThen:` is the most basic one. You can chain async executions sequentially.

```smalltalk
((talk asyncExecuteSql: 'select * from prog_languages where name = ?' values: {'Smalltalk'}) future
	andThen: [:rows | 1 seconds wait. Transcript cr; show: rows]) andThen: [:v | Transcript cr; show: v first]. "eventually executed"
Transcript cr; show: (talk executeSql: 'select * from prog_languages'). "immediately executed"
```
In this case, you will see the sync query result immediately. One second later, async query result will be shown on Transcript.

```smalltalk
#(#(1 'Smalltalk' 'cool') #(2 'Lua' 'hot'))
#(#(1 'Smalltalk' 'cool'))
#(1 'Smalltalk' 'cool')
```

The following is a complicated example. 
The results of the two asynchronous queries are collected (mapped) by `#collect:` and combined into one future by `#zip:`.

```smalltalk
(((talk asyncExecuteSql: 'select * from prog_languages where name = ?' values: {'Smalltalk'}) future collect: [:rows | rows first])
	zip: ((talk asyncExecuteSql: 'select * from prog_languages where name = ?' values: {'Lua'}) future collect: [:rows | rows first]))
	andThen: [ :zippedRows | Transcript cr; show: (zippedRows collect: [:each | each second -> each third]) asDictionary ]
```

You will see a merged Dictionary on Transcript. 

```smalltalk
a Dictionary('Lua'->'hot' 'Smalltalk'->'cool' )
```

## Setting task runners  ##

