initialize-release
initialize
	super initialize.
	value := self.
	semaphore := Semaphore new.
	request
		ifDone: [ :data :resp | self signalDone: data on: resp ]
		ifFailed: [ :error :resp | self signalFailed: error on: resp ]