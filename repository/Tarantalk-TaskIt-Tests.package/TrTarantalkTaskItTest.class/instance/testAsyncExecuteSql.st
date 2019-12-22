testing
testAsyncExecuteSql
	| talk future |
	talk := self tarantalk.
	talk settings taskRunnerType: #newProcess.
	future := (talk asyncExecuteSql: 'select 1') future.
	self assert: future isFinished equals: false.
	self retry:[future waitForCompletion: 500 milliSeconds] times: 10.
	self assert: future isFinished equals: true.
	talk settings taskRunnerType: #default.
	future andThen: [:val | self assert: val equals: (Array with: #(1))].
	future andThen: [:val | self assert: val metadata columnNames equals: #('1')].
	future andThen: [:val | self assert: val metadata columnTypes equals: #('integer')].