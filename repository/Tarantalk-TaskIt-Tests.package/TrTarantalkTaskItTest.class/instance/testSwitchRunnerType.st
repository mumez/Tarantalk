testing
testSwitchRunnerType
	| talk future |
	talk := self tarantalk.
	
	talk settings taskRunnerType: #default.
	future := (talk asyncExecuteSql: 'select 1') future.
	self assert: ((future instVarNamed: 'runner') isKindOf: TKTCommonQueueWorkerPool) equals: true.
	
	talk settings taskRunnerType: #workerPool.
	future := (talk asyncExecuteSql: 'select 1') future.
	self assert: ((future instVarNamed: 'runner') isKindOf: TKTWorkerPool) equals: true.
	
	talk settings taskRunnerType: #newProcess.
	future := (talk asyncExecuteSql: 'select 1') future.
	self assert: ((future instVarNamed: 'runner') isKindOf: TKTNewProcessTaskRunner) equals: true.
	
	talk settings taskRunnerType: #commonQueueWorkerPool.
	future := (talk asyncExecuteSql: 'select 1') future.
	self assert: ((future instVarNamed: 'runner') isKindOf: TKTCommonQueueWorkerPool) equals: true.
	
	talk settings taskRunnerType: nil.
	future := (talk asyncExecuteSql: 'select 1') future.
	self assert: ((future instVarNamed: 'runner') isKindOf: TKTCommonQueueWorkerPool) equals: true.
	