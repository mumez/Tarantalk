dictionary-like
at: key ifAbsent: aBlock
	^ (self asyncGetAt: key)
		valueThen: [ :ret | 
			ret
				ifEmpty: [ aBlock value]
				ifNotEmpty: [ self safeElement:(self safeAllButFirst: (self safeElement: ret)) ] ]