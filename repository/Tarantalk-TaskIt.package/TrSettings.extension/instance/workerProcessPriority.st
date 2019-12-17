*Tarantalk-TaskIt
workerProcessPriority
	^self at: #workerProcessPriority ifAbsentPut: [Processor userSchedulingPriority]