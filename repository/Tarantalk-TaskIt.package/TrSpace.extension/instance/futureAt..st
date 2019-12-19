*Tarantalk-TaskIt
futureAt: key
	^(self asyncGetAt: key) future 
		collect: [:val | self safeElement: (self safeAllButFirst: (self safeElement: val))]