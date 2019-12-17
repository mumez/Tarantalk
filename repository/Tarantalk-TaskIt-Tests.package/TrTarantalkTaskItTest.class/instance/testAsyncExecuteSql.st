testing
testAsyncExecuteSql
	| talk future |
	talk := self tarantalk.
	future := (talk asyncExecuteSql: 'select 1') future.
	self assert: future isFinished equals: false.
	future waitForCompletion: 500 milliSeconds.
	self assert: future isFinished equals: true.
	future andThen: [:val | self assert: val equals: (Array with: #(1))].