*Tarantalk-TaskIt
futureAt: key ifAbsent: aBlock
	^ (self asyncGetAt: key) future
		collect: [ :val | 
			val
				ifEmpty: [aBlock value]
				ifNotEmpty:
					[ self safeElement: (self safeAllButFirst: (self safeElement: val)) ] ]