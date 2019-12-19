*Tarantalk-TaskIt
futureValuesAt: keys
	^ (self asyncGetAt: keys) future collect: [:val |
		val isEmptyOrNil ifTrue: [ nil ].
		self safeAllButFirst: ((self safeElement: val)) 	
	].
	