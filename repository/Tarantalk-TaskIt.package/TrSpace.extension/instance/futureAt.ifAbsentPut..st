*Tarantalk-TaskIt
futureAt: key ifAbsentPut: aBlock
	^ (self asyncGetAt: key) future
		collect: [ :val | 
			val
				ifEmpty: [self at: key put: aBlock value]
				ifNotEmpty:
					[ self safeElement: (self safeAllButFirst: (self safeElement: val)) ] ]