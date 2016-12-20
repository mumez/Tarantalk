dictionary-like
at: key ifAbsentPut: aBlock
	^ (self asyncGetAt: key)
		valueThen: [ :ret | 
			ret
				ifEmpty: [ self at: key put: aBlock value ]
				ifNotEmpty: [ self safeElement:(self safeAllButFirst: (self safeElement: ret)) ] ]