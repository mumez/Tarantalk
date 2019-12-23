preparing
prepareDefaultCommonQueueWorkerPool
	| pool |
	pool := TKTCommonQueueWorkerPool new.
	pool name: 'Tarantalk-DefaultCommonQueueWorkerPool'.
	pool poolMaxSize: self defaultPoolMaxSize.
	pool start.
	^ pool