*Tarantalk-TaskIt
taskRunnerType
	"default, newProcess, workerPool, commonQueueWorkerPool"
	| val |
	val := self at: #taskRunnerType ifAbsentPut: [].
	val ifNil: [ ^ #default ].
	^ val