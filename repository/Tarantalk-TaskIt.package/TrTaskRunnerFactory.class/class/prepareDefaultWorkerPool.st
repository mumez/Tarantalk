preparing
prepareDefaultWorkerPool
	| pool |
	pool := TKTWorkerPool new.
	pool name: 'Tarantalk-DefaultCommonQueueWorkerPool'.
	pool poolMaxSize: self defaultPoolMaxSize.
	pool priority: self workerProcessPriority.
	pool start.
	^ pool