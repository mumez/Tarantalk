actions
create
	| taskRunnerType |
	taskRunnerType := self taskRunnerType.
	taskRunnerType == #default ifTrue: [ ^ self commonQueueWorkerPool].
	taskRunnerType == #newProcess ifTrue: [^ self newProcessTaskRunner].
	taskRunnerType == #workerPool ifTrue: [^ self workerPool].
	taskRunnerType == #commonQueueWorkerPool ifTrue: [^ self commonQueueWorkerPool].

	^self error: 'unknown task runner type'
	