accessing
mutex
	^mutex ifNil: [ mutex := SkPortableUtil default createMutex ]