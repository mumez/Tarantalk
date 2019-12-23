accessing
defaultWorkerPool
	^ defaultWorkerPool ifNil: [ defaultWorkerPool := self prepareDefaultWorkerPool ]