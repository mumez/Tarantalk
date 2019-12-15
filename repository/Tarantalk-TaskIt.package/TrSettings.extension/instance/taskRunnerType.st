*Tarantalk-TaskIt
taskRunnerType
	"default, newProcess, workerPool, commonQueueWorkerPool"
	^self at: #taskRunnerType ifAbsentPut: [#default]