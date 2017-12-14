initialize-release
initialize
	super initialize.
	value := self.
	semaphore := Semaphore new.
	request ifDone: [ :data | self signalDone: data ] ifFailed: [ :error | self signalFailed: error ]